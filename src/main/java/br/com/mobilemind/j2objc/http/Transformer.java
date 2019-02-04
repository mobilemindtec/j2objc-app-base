package br.com.mobilemind.j2objc.http;

import br.com.mobilemind.j2objc.rest.RestResult;
import com.google.gson.*;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.List;
import com.google.gson.reflect.TypeToken;

public class Transformer {

    public static String TIMESTAMP_FORMAT_JSON = "yyyy-MM-dd'T'HH:mm:ssXXX";
    private Response response;

    public Transformer(){}

    public void setResponse(Response response) {
        this.response = response;
    }

    public Gson makeGson(){
        return new GsonBuilder()
                .setFieldNamingPolicy(FieldNamingPolicy.UPPER_CAMEL_CASE)
                .setDateFormat(TIMESTAMP_FORMAT_JSON)
                .create();
    }

    public <T> List<T> list() throws IOException {
        Gson gson = this.makeGson();
        Type typeToken = new TypeToken<List<T>>() {}.getType();
        return  list(typeToken, gson);
    }

    public <T> List<T> list(Type typeToken) throws IOException {
        Gson gson = this.makeGson();
        return  list(typeToken, gson);
    }

    public <T> List<T> list(Type typeToken, Gson gson) throws IOException {
        String reader = string();
        return gson.fromJson(reader, typeToken);
    }

    public <T> T object() throws IOException {
        Gson gson = this.makeGson();
        Type typeToken = new TypeToken<T>() {}.getType();
        return  object(typeToken, gson);
    }

    public <T> T object(Class<T> clazz) throws IOException {
        Gson gson = this.makeGson();
        return  object(clazz, gson);
    }

    public <T> T object(Class<T> clazz, Gson gson) throws IOException {
        String reader = string();
        return gson.fromJson(reader, clazz);
    }

    public <T> T object(Type typeToken) throws IOException {
        Gson gson = this.makeGson();
        return  object(typeToken, gson);
    }

    public <T> T object(Type typeToken, Gson gson) throws IOException {
        String reader = string();
        return gson.fromJson(reader, typeToken);
    }

    public JsonObject json() throws IOException {
        JsonParser parser = new JsonParser();
        String reader = string();
        return parser.parse(reader).getAsJsonObject();
    }

    public JsonArray jsonArray() throws IOException {
        JsonParser parser = new JsonParser();
        String reader = string();
        return parser.parse(reader).getAsJsonArray();
    }

    private Reader reader(){
        BufferedReader br = new BufferedReader(new InputStreamReader(
                this.response.getEntity()));
        return  br;
    }

    public String string() throws IOException {

        BufferedReader reader = (BufferedReader)this.reader();
        StringBuilder content = new StringBuilder();
        String output = null;

        try {
            while ((output = reader.readLine()) != null) {
                content.append(output);
            }

            return content.toString();
        }finally {
            reader.close();
        }
    }

    public String errorString() throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(
                this.response.getError()));

        StringBuilder content = new StringBuilder();
        String output = null;

        try {
            while ((output = reader.readLine()) != null) {
                content.append(output);
            }

            return content.toString();
        }finally {
            reader.close();
        }
    }

    public JsonObject errorJson() throws IOException {
        JsonParser parser = new JsonParser();
        return parser.parse(errorString()).getAsJsonObject();
    }

    public <T> T errorObject(Class<T> clazz) throws IOException {
        Gson gson = new GsonBuilder().create();
        return errorObject(clazz, gson);
    }

    public <T> T errorObject(Class<T> clazz, Gson gson) throws IOException {
        return gson.fromJson(errorString(), clazz);
    }
}

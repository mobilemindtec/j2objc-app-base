package br.com.mobilemind.j2objc.rest;

import java.util.List;

public class RestResultAsString{

    private boolean error;
    private String message;
    private String result;
    private List<String> results;

    public RestResultAsString(){}

    public RestResultAsString(boolean error, String message){
        this.error = error;
        this.message = message;
    }

    public RestResultAsString(String message, String result){
        this.message = message;
        this.result = result;
    }

    public RestResultAsString(List<String> results){
        this.results = results;
    }

    public boolean isError() {
        return error;
    }

    public boolean isSuccess() {
        return !error;
    }

    public void setError(boolean error) {
        this.error = error;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public List<String> getResults() {
        return results;
    }

    public void setResults(List<String> results) {
        this.results = results;
    }
}

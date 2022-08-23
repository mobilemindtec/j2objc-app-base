package br.com.mobilemind.j2objc.rest;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;


public class RestService{

    protected static final Logger logger = Logger.getLogger(RestService.class.getName());

    private int timeout;
    private String baseUrl;
    private String action;
    private Map<String, String> headers;

    public RestService(String baseUrl){
        this(baseUrl, 10000);

    }

    public RestService(String baseUrl, int timeout){
        this.baseUrl = baseUrl;
        this.timeout = timeout;
        this.headers = new HashMap<>();
    }

    public RestService header(String name, String value){
        this.headers.put(name, value);
        return this;
    }

    public RestService action(String a){
        this.action = a;
        return  this;
    }

    private HttpURLConnection getHttpConnection(String path) throws Exception{
        HttpURLConnection conn = null;
        URL url = new URL(path);

        logger.info("HTTP CONNECT: " + path);

        conn = (HttpURLConnection) url.openConnection();

        for(String name : this.headers.keySet()){
            conn.setRequestProperty (name, this.headers.get(name));
        }

        conn.setInstanceFollowRedirects(false);
        conn.setRequestProperty( "charset", "utf-8");
        conn.setUseCaches(false);
        conn.setConnectTimeout(timeout);
        conn.setReadTimeout(timeout);
        conn.setAllowUserInteraction(false);
        return conn;
    }

    public String getAsString() throws Exception{

        String content = "";
        String path = this.baseUrl;

        if(this.action != null)
            path += "/" + this.action;

        HttpURLConnection conn = null;

        logger.info("# call get from resource " + path);

        try{
            conn = this.getHttpConnection(path);
            conn.setRequestMethod("GET");
            conn.connect();

            this.tratarErro(conn);

            BufferedReader br = new BufferedReader(new InputStreamReader(
                                                                conn.getInputStream()));

            String output = null;
            while ((output = br.readLine()) != null) {
                content += output;
            }

            if(content == null || content.length() == 0){
                logger.info("# output result is empty ");
            }

            logger.info("######################");
            logger.info("#### content=" + content);
            logger.info("######################");

            br.close();


        }catch(java.net.SocketTimeoutException e){
            throw new RestException(408, "O servidor parece estar off-line. Tente novamente mais tarde.");
        }catch(Exception e){
            logger.log(Level.SEVERE, e.getMessage(), e);
            throw new RestException(e.getMessage(), e);
        }finally{
            if(conn != null)
                conn.disconnect();
        }

        return content;
    }

    public String postAsString(String entity) throws Exception{
        return this.postOrPut(entity, false);
    }

    public String putAsString(String entity) throws Exception{
        return this.postOrPut(entity, true);
    }

    private String postOrPut(String entity, boolean put) throws Exception{

        String content = "";
        String path = this.baseUrl;
        HttpURLConnection conn = null;
        String output = null;

        if(this.action != null)
            path += "/" + this.action;

        byte[] postData = entity.getBytes( StandardCharsets.UTF_8 );
        int postDataLength = postData.length;

        logger.info("# call " + (put ? "put" : "post") + " from resource " + path);
        logger.info("# POST  " + entity);

        try{
            conn = this.getHttpConnection(path);
            conn.setDoOutput( true );

            if(put)
                conn.setRequestMethod( "PUT" );
            else
                conn.setRequestMethod( "POST" );

            conn.setRequestProperty( "Content-Length", Integer.toString( postDataLength ));

            DataOutputStream dataWriter = new DataOutputStream(conn.getOutputStream());
            dataWriter.write(postData);
            dataWriter.flush();
            dataWriter.close();

            conn.connect();

             this.tratarErro(conn);

            BufferedReader br = new BufferedReader(new InputStreamReader(
                                                                conn.getInputStream()));

            while ((output = br.readLine()) != null) {
                content += output;
            }

            if(content == null || content.length() == 0){
                logger.info("# output result is empty ");
            }


            logger.info("######################");
            logger.info("#### content=" + content);
            logger.info("######################");


        }catch(java.net.SocketTimeoutException e){
            throw new RestException(408, "O servidor parece estar off-line. Tente novamente mais tarde.");
        }catch(Exception e){
            logger.log(Level.SEVERE, e.getMessage(), e);
            throw new RestException(e.getMessage(), e);
        }finally{
            if(conn != null)
                conn.disconnect();
        }

        return content;
    }

    public String deleteAsString(int id) throws Exception{

        String content = "";
        String path = this.baseUrl;
        HttpURLConnection conn = null;

        if(this.action != null)
            path += "/" + this.action;

        path += "/" + id;

        logger.info("# call delete from resource " + path);

        try{
            conn = this.getHttpConnection(path);

            conn.setRequestMethod("DELETE");
            conn.connect();

            this.tratarErro(conn);
        }catch(java.net.SocketTimeoutException e){
            throw new RestException(408, "O servidor parece estar off-line. Tente novamente mais tarde.");
        }catch(Exception e){
            logger.log(Level.SEVERE, e.getMessage(), e);
            throw new RestException(e.getMessage(), e);
        }finally{
            if(conn != null)
                conn.disconnect();
        }

        return content;
    }

    private void tratarErro(HttpURLConnection conn) throws Exception{

        if (conn.getResponseCode() != 200) {



            BufferedReader brError = new BufferedReader(new InputStreamReader(
                                                                              conn.getErrorStream()));

            String outputError = null;
            String contentError = "";
            while ((outputError = brError.readLine()) != null) {
                contentError += outputError;
            }

            if(contentError == null || contentError.length() == 0){
                logger.info("# output result is empty ");
            }

            brError.close();

            logger.info("# http result: " + conn.getResponseCode() + ". Message = " + contentError);

            int code = conn.getResponseCode();

            if (contentError.contains("network connection not found")) {
                contentError = "Verifique sua conexão com a internet.";
            } else if (contentError.contains("unauthorized") || contentError.contains("bad credentials")
                       || code == 401) {
                contentError = "Acesso Negado. Verifique seus dados de acesso.";
            } else if (contentError.contains("conneciton refused")) {
                contentError = "O servidor parece estar off-line. Tente novamente mais tarde.";
            } else if (contentError.contains("timeout")) {
                contentError =  "O servidor demorou para responder. Tente novamente mais tarde.";
            }

            throw new RestException(conn.getResponseCode(), contentError);
        }
    }

}

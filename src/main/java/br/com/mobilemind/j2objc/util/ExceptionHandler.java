package br.com.mobilemind.j2objc.util;

import br.com.mobilemind.j2objc.http.HttpException;
import br.com.mobilemind.j2objc.http.Response;

import java.io.IOException;

public class ExceptionHandler {


    public static Throwable handle(Exception e){

        Throwable throwable = e;

        if(e instanceof NullPointerException)
            return new NullPointerException("NullPointerException");

        if(e.getCause() != null && e instanceof  HttpException)
            throwable = e.getCause();

        if(throwable instanceof java.net.SocketTimeoutException)
            return new HttpException(408, "O servidor parece estar off-line. Tente novamente mais tarde.");

        return throwable;
    }

    public static String handle(Response response) throws IOException {


        String contentError = response.transformer().errorString();

        if (contentError.contains("network connection not found")) {
            contentError = "Verifique sua conexão com a internet.";
        } else if (contentError.contains("unauthorized") || contentError.contains("bad credentials")
                || response.getHttpStatus() == 401) {
            contentError = "Acesso Negado. Verifique seus dados de acesso.";
        } else if (contentError.contains("conneciton refused")) {
            contentError = "O servidor parece estar off-line. Tente novamente mais tarde.";
        } else if (contentError.contains("timeout")) {
            contentError =  "O servidor demorou para responder. Tente novamente mais tarde.";
        }

        return  contentError;
    }

}

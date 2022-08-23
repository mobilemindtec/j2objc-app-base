package br.com.mobilemind.j2objc.rest;


public class RestException extends RuntimeException {

    private int httpSatatus = -1;

    public RestException(String message, Exception e) {
        super(message, e);
    }

    public RestException(Exception e) {
        super(e);
    }

    public RestException(String message) {
        super(message);
    }

    public RestException() {
        super("unknown exception");
    }

    public RestException(int httpStatus, String message) {
        super(message);
        this.httpSatatus = httpStatus;
    }

    public RestException(int httpStatus) {
        this.httpSatatus = httpStatus;
    }

    public int getHttpSatatus() {
        return httpSatatus;
    }
}

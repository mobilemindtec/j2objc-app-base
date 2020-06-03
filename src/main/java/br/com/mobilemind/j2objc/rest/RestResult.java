package br.com.mobilemind.j2objc.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RestResult<T> {

    private boolean error;
    private String message;
    private T result;
    private List<T> results;
    private long currentUnixTime;
    private int totalCount;
    private Map<String, String> errors = new HashMap<>();

    public RestResult(){}

    public RestResult(boolean error, String message){
        this.error = error;
        this.message = message;
    }

    public RestResult(Throwable ex){
        this.error = true;
        this.message = ex.getMessage();
    }

    public RestResult(String message){
        this.message = message;
    }

    public RestResult(T result){
        this.result = result;
    }

    public RestResult(List<T> results){
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

        String val = message;

        if(this.errors != null && !this.errors.isEmpty()){
            val += "\n\n";

            for(String key : this.errors.keySet()){
                val += key + ": " + this.errors.get(key) + "\n";
            }
        }

        return val;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getResult() {
        return result;
    }

    public void setResult(T result) {
        this.result = result;
    }

    public List<T> getResults() {
        return results;
    }

    public void setResults(List<T> results) {
        this.results = results;
    }

    public long getCurrentUnixTime() {
        return currentUnixTime;
    }

    public void setCurrentUnixTime(long currentUnixTime) {
        this.currentUnixTime = currentUnixTime;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public Map<String, String> getErrors() {
        return errors;
    }

    public void setErrors(Map<String, String> errors) {
        this.errors = errors;
    }
}

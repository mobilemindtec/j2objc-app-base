package br.com.mobilemind.j2objc.util;

public class AppUtil{

    public static boolean isEmpty(String text){

        return text == null || text.trim().length() == 0;
    }

}


package br.com.mobilemind.j2objc.util;

import java.util.Calendar;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.logging.Logger;

public class DateConverter{

    protected static final Logger logger = Logger.getLogger(DateConverter.class.getName());

    private static SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

    public static String from(Date date){

        if(date == null) return null;

        return format.format(date);
    }

    public static Date to(String date){

        if(date == null) return null;

        if(date.endsWith("00:00:00.000")){
            date = date.replace("00:00:00.000", "01:01:01.001");
        }

        try{
            return format.parse(date);
        }catch(ParseException e){
            logger.info("DateConverter: to " + e.getMessage());
        }

        return null;
    }
}

package br.com.mobilemind.j2objc.shared;


import br.com.mobilemind.j2objc.shared.ios.PreferencesImpl;
import com.google.j2objc.annotations.ObjectiveCName;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SharedFactory {

    protected static final Logger logger = Logger.getLogger(SharedFactory.class.getName());

    private static Map<String, Class> ITEMS = new HashMap<>();
    private static Map<String, Object> OBJECTS = new HashMap<>();


    @ObjectiveCName("addShared:to:")
    public static void Add(Class sharedClass, Class interfaceClass){
        String keyName = interfaceClass.getName();
        ITEMS.put(keyName, sharedClass);
    }

    @ObjectiveCName("addSharedInstance:to:")
    public static void Add(Object instance, Class interfaceClass){
        String keyName = interfaceClass.getName();
        ITEMS.put(keyName, instance.getClass());
        OBJECTS.put(keyName, instance);
    }    

    public static Preferences getPreferences() {

        String keyName = Preferences.class.getName();

        if(OBJECTS.containsKey(keyName))
            return  (Preferences) OBJECTS.get(keyName);


        if(!ITEMS.containsKey(keyName))
            throw new RuntimeException("factory class to " + keyName + " not found");

        Class cls = ITEMS.get(keyName);
        try{
            Preferences p = (Preferences) cls.newInstance();
            OBJECTS.put(keyName, p);
            logger.info("** preferences created");
            return p;
        }catch (Exception e){
            logger.log(Level.SEVERE, e.getMessage(), e);
            throw new RuntimeException("factory error on create " + keyName + ": " + e.getMessage());
        }
    }



    public static void initIOS(){
        Add(PreferencesImpl.class, Preferences.class);
    }
}

package br.com.mobilemind.j2objc.shared;

public interface Preferences {

    boolean hasKey(String keyName);


    boolean setString(String keyName, String value);

    String getString(String keyName);

    boolean setInt(String keyName, int value);

    int getInt(String keyName);

    boolean setBool(String keyName, boolean value);

    boolean getBool(String keyName);

    void remove(String keyName);
}

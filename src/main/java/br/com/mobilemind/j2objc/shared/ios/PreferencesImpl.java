package br.com.mobilemind.j2objc.shared.ios;


import br.com.mobilemind.j2objc.shared.Preferences;

public class PreferencesImpl implements Preferences {
    @Override
    public native boolean hasKey(String keyName)/*-[
        NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
        return [preferences objectForKey:keyName];
    ]-*/;

    @Override
    public native boolean setString(String keyName, String value)/*-[
        NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
        [preferences setValue:value forKey:keyName];
        return [preferences synchronize];
    ]-*/;

    @Override
    public native String getString(String keyName) /*-[
        NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
        if ([preferences objectForKey:keyName] != nil){
            return [preferences stringForKey:keyName];
        }
        return nil;
    ]-*/;

    @Override
    public native boolean setInt(String keyName, int value) /*-[
        NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
        [preferences setInteger:value forKey:keyName];
        return [preferences synchronize];
    ]-*/;

    @Override
    public native int getInt(String keyName)/*-[
        NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
        if ([preferences objectForKey:keyName] != nil){
            return [preferences integerForKey:keyName];
        }
        return -1;
    ]-*/;

    @Override
    public native boolean setBool(String keyName, boolean value) /*-[
        NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
        [preferences setBool:value forKey:keyName];
        return [preferences synchronize];
    ]-*/;

    @Override
    public native boolean getBool(String keyName)/*-[
        NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
        if ([preferences objectForKey:keyName] != nil){
            return [preferences boolForKey:keyName];
        }
        return false;
    ]-*/;

    @Override
    public native void remove(String keyName)/*-[
        NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
        [preferences removeObjectForKey: keyName];
    ]-*/;
}

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/Preferences.java
//

#ifndef Preferences_H
#define Preferences_H

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#include "J2ObjC_header.h"

@protocol JavaUtilList;

@protocol AppBasePreferences < JavaObject >

- (jboolean)hasKeyWithNSString:(NSString *)keyName;

- (jboolean)setStringWithNSString:(NSString *)keyName
                     withNSString:(NSString *)value;

- (NSString *)getStringWithNSString:(NSString *)keyName;

- (jboolean)setIntWithNSString:(NSString *)keyName
                       withInt:(jint)value;

- (jint)getIntWithNSString:(NSString *)keyName;

- (jboolean)setBoolWithNSString:(NSString *)keyName
                    withBoolean:(jboolean)value;

- (jboolean)getBoolWithNSString:(NSString *)keyName;

- (void)removeWithNSString:(NSString *)keyName;

- (void)clear;

- (id<JavaUtilList>)allKeys;

@end

J2OBJC_EMPTY_STATIC_INIT(AppBasePreferences)

J2OBJC_TYPE_LITERAL_HEADER(AppBasePreferences)

#define BrComMobilemindJ2objcSharedPreferences AppBasePreferences


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#endif // Preferences_H

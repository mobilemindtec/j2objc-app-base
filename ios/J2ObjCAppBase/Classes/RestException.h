//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/RestException.java
//

#ifndef RestException_H
#define RestException_H

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#include "J2ObjC_header.h"
#include "java/lang/RuntimeException.h"

@class JavaLangException;
@class JavaLangThrowable;

@interface AppBaseRestException : JavaLangRuntimeException

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaLangException:(JavaLangException *)e;

- (instancetype __nonnull)initWithInt:(jint)httpStatus;

- (instancetype __nonnull)initWithInt:(jint)httpStatus
                         withNSString:(NSString *)message;

- (instancetype __nonnull)initWithNSString:(NSString *)message;

- (instancetype __nonnull)initWithNSString:(NSString *)message
                     withJavaLangException:(JavaLangException *)e;

- (jint)getHttpSatatus;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1
                               withBoolean:(jboolean)arg2
                               withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(AppBaseRestException)

FOUNDATION_EXPORT void AppBaseRestException_initWithNSString_withJavaLangException_(AppBaseRestException *self, NSString *message, JavaLangException *e);

FOUNDATION_EXPORT AppBaseRestException *new_AppBaseRestException_initWithNSString_withJavaLangException_(NSString *message, JavaLangException *e) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AppBaseRestException *create_AppBaseRestException_initWithNSString_withJavaLangException_(NSString *message, JavaLangException *e);

FOUNDATION_EXPORT void AppBaseRestException_initWithJavaLangException_(AppBaseRestException *self, JavaLangException *e);

FOUNDATION_EXPORT AppBaseRestException *new_AppBaseRestException_initWithJavaLangException_(JavaLangException *e) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AppBaseRestException *create_AppBaseRestException_initWithJavaLangException_(JavaLangException *e);

FOUNDATION_EXPORT void AppBaseRestException_initWithNSString_(AppBaseRestException *self, NSString *message);

FOUNDATION_EXPORT AppBaseRestException *new_AppBaseRestException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AppBaseRestException *create_AppBaseRestException_initWithNSString_(NSString *message);

FOUNDATION_EXPORT void AppBaseRestException_init(AppBaseRestException *self);

FOUNDATION_EXPORT AppBaseRestException *new_AppBaseRestException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AppBaseRestException *create_AppBaseRestException_init(void);

FOUNDATION_EXPORT void AppBaseRestException_initWithInt_withNSString_(AppBaseRestException *self, jint httpStatus, NSString *message);

FOUNDATION_EXPORT AppBaseRestException *new_AppBaseRestException_initWithInt_withNSString_(jint httpStatus, NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AppBaseRestException *create_AppBaseRestException_initWithInt_withNSString_(jint httpStatus, NSString *message);

FOUNDATION_EXPORT void AppBaseRestException_initWithInt_(AppBaseRestException *self, jint httpStatus);

FOUNDATION_EXPORT AppBaseRestException *new_AppBaseRestException_initWithInt_(jint httpStatus) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AppBaseRestException *create_AppBaseRestException_initWithInt_(jint httpStatus);

J2OBJC_TYPE_LITERAL_HEADER(AppBaseRestException)

@compatibility_alias BrComMobilemindJ2objcRestRestException AppBaseRestException;


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#endif // RestException_H

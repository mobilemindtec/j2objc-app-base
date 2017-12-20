//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/RestService.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RestService")
#ifdef RESTRICT_RestService
#define INCLUDE_ALL_RestService 0
#else
#define INCLUDE_ALL_RestService 1
#endif
#undef RESTRICT_RestService

#if !defined (AppBaseRestService_) && (INCLUDE_ALL_RestService || defined(INCLUDE_AppBaseRestService))
#define AppBaseRestService_

@class JavaUtilLoggingLogger;

@interface AppBaseRestService : NSObject

+ (JavaUtilLoggingLogger *)logger;

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)baseUrl;

- (instancetype)initWithNSString:(NSString *)baseUrl
                         withInt:(jint)timeout;

- (AppBaseRestService *)actionWithNSString:(NSString *)a;

- (NSString *)deleteAsStringWithInt:(jint)id_;

- (NSString *)getAsString;

- (AppBaseRestService *)headerWithNSString:(NSString *)name
                              withNSString:(NSString *)value;

- (NSString *)postAsStringWithNSString:(NSString *)entity;

- (NSString *)putAsStringWithNSString:(NSString *)entity;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(AppBaseRestService)

inline JavaUtilLoggingLogger *AppBaseRestService_get_logger(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilLoggingLogger *AppBaseRestService_logger;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AppBaseRestService, logger, JavaUtilLoggingLogger *)

FOUNDATION_EXPORT void AppBaseRestService_initWithNSString_(AppBaseRestService *self, NSString *baseUrl);

FOUNDATION_EXPORT AppBaseRestService *new_AppBaseRestService_initWithNSString_(NSString *baseUrl) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AppBaseRestService *create_AppBaseRestService_initWithNSString_(NSString *baseUrl);

FOUNDATION_EXPORT void AppBaseRestService_initWithNSString_withInt_(AppBaseRestService *self, NSString *baseUrl, jint timeout);

FOUNDATION_EXPORT AppBaseRestService *new_AppBaseRestService_initWithNSString_withInt_(NSString *baseUrl, jint timeout) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AppBaseRestService *create_AppBaseRestService_initWithNSString_withInt_(NSString *baseUrl, jint timeout);

J2OBJC_TYPE_LITERAL_HEADER(AppBaseRestService)

@compatibility_alias BrComMobilemindJ2objcRestRestService AppBaseRestService;

#endif

#pragma pop_macro("INCLUDE_ALL_RestService")

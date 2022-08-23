//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/Request.java
//

#ifndef Request_H
#define Request_H

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#include "J2ObjC_header.h"

@protocol JavaUtilMap;

@interface BrComMobilemindJ2objcHttpRequest : NSObject
@property (readonly, copy, class) NSString *CONTENT_TYPE_HEADER NS_SWIFT_NAME(CONTENT_TYPE_HEADER);
@property (readonly, copy, class) NSString *CONTENT_TYPE_JSON NS_SWIFT_NAME(CONTENT_TYPE_JSON);
@property (readonly, copy, class) NSString *CONTENT_TYPE_FORM NS_SWIFT_NAME(CONTENT_TYPE_FORM);
@property (readonly, copy, class) NSString *ACCEPT_HEADER NS_SWIFT_NAME(ACCEPT_HEADER);
@property (readonly, copy, class) NSString *ACCEPT NS_SWIFT_NAME(ACCEPT);

+ (NSString *)CONTENT_TYPE_HEADER;

+ (NSString *)CONTENT_TYPE_JSON;

+ (NSString *)CONTENT_TYPE_FORM;

+ (NSString *)ACCEPT_HEADER;

+ (NSString *)ACCEPT;

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString * __nonnull)url;

- (instancetype __nonnull)initWithNSString:(NSString * __nonnull)url
                           withJavaUtilMap:(id<JavaUtilMap> __nonnull)headers;

- (instancetype __nonnull)initWithNSString:(NSString * __nonnull)url
                                    withId:(id __nonnull)body;

- (instancetype __nonnull)initWithNSString:(NSString * __nonnull)url
                                    withId:(id __nonnull)body
                           withJavaUtilMap:(id<JavaUtilMap> __nonnull)headers;

- (id)getBody;

- (NSString *)getContentType;

- (id<JavaUtilMap>)getHeaders;

- (NSString *)getUrl;

- (jboolean)isFormContentType;

- (jboolean)isJsonContentType;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(BrComMobilemindJ2objcHttpRequest)

inline NSString *BrComMobilemindJ2objcHttpRequest_get_CONTENT_TYPE_HEADER(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *BrComMobilemindJ2objcHttpRequest_CONTENT_TYPE_HEADER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(BrComMobilemindJ2objcHttpRequest, CONTENT_TYPE_HEADER, NSString *)

inline NSString *BrComMobilemindJ2objcHttpRequest_get_CONTENT_TYPE_JSON(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *BrComMobilemindJ2objcHttpRequest_CONTENT_TYPE_JSON;
J2OBJC_STATIC_FIELD_OBJ_FINAL(BrComMobilemindJ2objcHttpRequest, CONTENT_TYPE_JSON, NSString *)

inline NSString *BrComMobilemindJ2objcHttpRequest_get_CONTENT_TYPE_FORM(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *BrComMobilemindJ2objcHttpRequest_CONTENT_TYPE_FORM;
J2OBJC_STATIC_FIELD_OBJ_FINAL(BrComMobilemindJ2objcHttpRequest, CONTENT_TYPE_FORM, NSString *)

inline NSString *BrComMobilemindJ2objcHttpRequest_get_ACCEPT_HEADER(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *BrComMobilemindJ2objcHttpRequest_ACCEPT_HEADER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(BrComMobilemindJ2objcHttpRequest, ACCEPT_HEADER, NSString *)

inline NSString *BrComMobilemindJ2objcHttpRequest_get_ACCEPT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *BrComMobilemindJ2objcHttpRequest_ACCEPT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(BrComMobilemindJ2objcHttpRequest, ACCEPT, NSString *)

FOUNDATION_EXPORT void BrComMobilemindJ2objcHttpRequest_initWithNSString_withId_withJavaUtilMap_(BrComMobilemindJ2objcHttpRequest *self, NSString *url, id body, id<JavaUtilMap> headers);

FOUNDATION_EXPORT BrComMobilemindJ2objcHttpRequest *new_BrComMobilemindJ2objcHttpRequest_initWithNSString_withId_withJavaUtilMap_(NSString *url, id body, id<JavaUtilMap> headers) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT BrComMobilemindJ2objcHttpRequest *create_BrComMobilemindJ2objcHttpRequest_initWithNSString_withId_withJavaUtilMap_(NSString *url, id body, id<JavaUtilMap> headers);

FOUNDATION_EXPORT void BrComMobilemindJ2objcHttpRequest_initWithNSString_withId_(BrComMobilemindJ2objcHttpRequest *self, NSString *url, id body);

FOUNDATION_EXPORT BrComMobilemindJ2objcHttpRequest *new_BrComMobilemindJ2objcHttpRequest_initWithNSString_withId_(NSString *url, id body) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT BrComMobilemindJ2objcHttpRequest *create_BrComMobilemindJ2objcHttpRequest_initWithNSString_withId_(NSString *url, id body);

FOUNDATION_EXPORT void BrComMobilemindJ2objcHttpRequest_initWithNSString_(BrComMobilemindJ2objcHttpRequest *self, NSString *url);

FOUNDATION_EXPORT BrComMobilemindJ2objcHttpRequest *new_BrComMobilemindJ2objcHttpRequest_initWithNSString_(NSString *url) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT BrComMobilemindJ2objcHttpRequest *create_BrComMobilemindJ2objcHttpRequest_initWithNSString_(NSString *url);

FOUNDATION_EXPORT void BrComMobilemindJ2objcHttpRequest_initWithNSString_withJavaUtilMap_(BrComMobilemindJ2objcHttpRequest *self, NSString *url, id<JavaUtilMap> headers);

FOUNDATION_EXPORT BrComMobilemindJ2objcHttpRequest *new_BrComMobilemindJ2objcHttpRequest_initWithNSString_withJavaUtilMap_(NSString *url, id<JavaUtilMap> headers) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT BrComMobilemindJ2objcHttpRequest *create_BrComMobilemindJ2objcHttpRequest_initWithNSString_withJavaUtilMap_(NSString *url, id<JavaUtilMap> headers);

J2OBJC_TYPE_LITERAL_HEADER(BrComMobilemindJ2objcHttpRequest)


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#endif // Request_H

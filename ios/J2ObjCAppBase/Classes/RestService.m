//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/RestService.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "RestException.h"
#include "RestService.h"
#include "java/io/BufferedReader.h"
#include "java/io/DataOutputStream.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/OutputStream.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/net/HttpURLConnection.h"
#include "java/net/SocketTimeoutException.h"
#include "java/net/URL.h"
#include "java/net/URLConnection.h"
#include "java/nio/charset/Charset.h"
#include "java/nio/charset/StandardCharsets.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"

@interface AppBaseRestService () {
 @public
  jint timeout_;
  NSString *baseUrl_;
  NSString *action_;
  id<JavaUtilMap> headers_;
}

- (JavaNetHttpURLConnection *)getHttpConnectionWithNSString:(NSString *)path;

- (NSString *)postOrPutWithNSString:(NSString *)entity
                        withBoolean:(jboolean)put;

- (void)tratarErroWithJavaNetHttpURLConnection:(JavaNetHttpURLConnection *)conn;

@end

J2OBJC_FIELD_SETTER(AppBaseRestService, baseUrl_, NSString *)
J2OBJC_FIELD_SETTER(AppBaseRestService, action_, NSString *)
J2OBJC_FIELD_SETTER(AppBaseRestService, headers_, id<JavaUtilMap>)

__attribute__((unused)) static JavaNetHttpURLConnection *AppBaseRestService_getHttpConnectionWithNSString_(AppBaseRestService *self, NSString *path);

__attribute__((unused)) static NSString *AppBaseRestService_postOrPutWithNSString_withBoolean_(AppBaseRestService *self, NSString *entity, jboolean put);

__attribute__((unused)) static void AppBaseRestService_tratarErroWithJavaNetHttpURLConnection_(AppBaseRestService *self, JavaNetHttpURLConnection *conn);

J2OBJC_INITIALIZED_DEFN(AppBaseRestService)

JavaUtilLoggingLogger *AppBaseRestService_logger;

@implementation AppBaseRestService

+ (JavaUtilLoggingLogger *)logger {
  return AppBaseRestService_logger;
}

- (instancetype)initWithNSString:(NSString *)baseUrl {
  AppBaseRestService_initWithNSString_(self, baseUrl);
  return self;
}

- (instancetype)initWithNSString:(NSString *)baseUrl
                         withInt:(jint)timeout {
  AppBaseRestService_initWithNSString_withInt_(self, baseUrl, timeout);
  return self;
}

- (AppBaseRestService *)headerWithNSString:(NSString *)name
                              withNSString:(NSString *)value {
  (void) [((id<JavaUtilMap>) nil_chk(self->headers_)) putWithId:name withId:value];
  return self;
}

- (AppBaseRestService *)actionWithNSString:(NSString *)a {
  self->action_ = a;
  return self;
}

- (JavaNetHttpURLConnection *)getHttpConnectionWithNSString:(NSString *)path {
  return AppBaseRestService_getHttpConnectionWithNSString_(self, path);
}

- (NSString *)getAsString {
  NSString *content = @"";
  NSString *path = self->baseUrl_;
  if (self->action_ != nil) (void) JreStrAppendStrong(&path, "C$", '/', self->action_);
  JavaNetHttpURLConnection *conn = nil;
  [((JavaUtilLoggingLogger *) nil_chk(AppBaseRestService_logger)) infoWithNSString:JreStrcat("$$", @"# call get from resource ", path)];
  @try {
    conn = AppBaseRestService_getHttpConnectionWithNSString_(self, path);
    [((JavaNetHttpURLConnection *) nil_chk(conn)) setRequestMethodWithNSString:@"GET"];
    [conn connect];
    AppBaseRestService_tratarErroWithJavaNetHttpURLConnection_(self, conn);
    JavaIoBufferedReader *br = new_JavaIoBufferedReader_initWithJavaIoReader_(new_JavaIoInputStreamReader_initWithJavaIoInputStream_([conn getInputStream]));
    NSString *output = nil;
    while ((output = [br readLine]) != nil) {
      (void) JreStrAppendStrong(&content, "$", output);
    }
    if (content == nil || [content java_length] == 0) {
      [AppBaseRestService_logger infoWithNSString:@"# output result is empty "];
    }
    [AppBaseRestService_logger infoWithNSString:@"######################"];
    [AppBaseRestService_logger infoWithNSString:JreStrcat("$$", @"#### content=", content)];
    [AppBaseRestService_logger infoWithNSString:@"######################"];
    [br close];
  }
  @catch (JavaNetSocketTimeoutException *e) {
    @throw new_AppBaseRestException_initWithInt_withNSString_(408, @"O servidor parece estar off-line. Tente novamente mais tarde.");
  }
  @catch (JavaLangException *e) {
    [AppBaseRestService_logger logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, SEVERE) withNSString:[e getMessage] withJavaLangThrowable:e];
    @throw new_AppBaseRestException_initWithNSString_withJavaLangException_([e getMessage], e);
  }
  @finally {
    if (conn != nil) [conn disconnect];
  }
  return content;
}

- (NSString *)postAsStringWithNSString:(NSString *)entity {
  return AppBaseRestService_postOrPutWithNSString_withBoolean_(self, entity, false);
}

- (NSString *)putAsStringWithNSString:(NSString *)entity {
  return AppBaseRestService_postOrPutWithNSString_withBoolean_(self, entity, true);
}

- (NSString *)postOrPutWithNSString:(NSString *)entity
                        withBoolean:(jboolean)put {
  return AppBaseRestService_postOrPutWithNSString_withBoolean_(self, entity, put);
}

- (NSString *)deleteAsStringWithInt:(jint)id_ {
  NSString *content = @"";
  NSString *path = self->baseUrl_;
  JavaNetHttpURLConnection *conn = nil;
  if (self->action_ != nil) (void) JreStrAppendStrong(&path, "C$", '/', self->action_);
  (void) JreStrAppendStrong(&path, "CI", '/', id_);
  [((JavaUtilLoggingLogger *) nil_chk(AppBaseRestService_logger)) infoWithNSString:JreStrcat("$$", @"# call delete from resource ", path)];
  @try {
    conn = AppBaseRestService_getHttpConnectionWithNSString_(self, path);
    [((JavaNetHttpURLConnection *) nil_chk(conn)) setRequestMethodWithNSString:@"DELETE"];
    [conn connect];
    AppBaseRestService_tratarErroWithJavaNetHttpURLConnection_(self, conn);
  }
  @catch (JavaNetSocketTimeoutException *e) {
    @throw new_AppBaseRestException_initWithInt_withNSString_(408, @"O servidor parece estar off-line. Tente novamente mais tarde.");
  }
  @catch (JavaLangException *e) {
    [AppBaseRestService_logger logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, SEVERE) withNSString:[e getMessage] withJavaLangThrowable:e];
    @throw new_AppBaseRestException_initWithNSString_withJavaLangException_([e getMessage], e);
  }
  @finally {
    if (conn != nil) [conn disconnect];
  }
  return content;
}

- (void)tratarErroWithJavaNetHttpURLConnection:(JavaNetHttpURLConnection *)conn {
  AppBaseRestService_tratarErroWithJavaNetHttpURLConnection_(self, conn);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LAppBaseRestService;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LAppBaseRestService;", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "LJavaNetHttpURLConnection;", 0x2, 5, 0, 6, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 6, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, 0, 6, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 8, 0, 6, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, 9, 10, 6, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, 12, 6, -1, -1, -1 },
    { NULL, "V", 0x2, 13, 14, 6, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithNSString:withInt:);
  methods[2].selector = @selector(headerWithNSString:withNSString:);
  methods[3].selector = @selector(actionWithNSString:);
  methods[4].selector = @selector(getHttpConnectionWithNSString:);
  methods[5].selector = @selector(getAsString);
  methods[6].selector = @selector(postAsStringWithNSString:);
  methods[7].selector = @selector(putAsStringWithNSString:);
  methods[8].selector = @selector(postOrPutWithNSString:withBoolean:);
  methods[9].selector = @selector(deleteAsStringWithInt:);
  methods[10].selector = @selector(tratarErroWithJavaNetHttpURLConnection:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "logger", "LJavaUtilLoggingLogger;", .constantValue.asLong = 0, 0x1c, -1, 15, -1, -1 },
    { "timeout_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "baseUrl_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "action_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "headers_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 16, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LNSString;I", "header", "LNSString;LNSString;", "action", "getHttpConnection", "LJavaLangException;", "postAsString", "putAsString", "postOrPut", "LNSString;Z", "deleteAsString", "I", "tratarErro", "LJavaNetHttpURLConnection;", &AppBaseRestService_logger, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _AppBaseRestService = { "RestService", "br.com.mobilemind.j2objc.rest", ptrTable, methods, fields, 7, 0x1, 11, 5, -1, -1, -1, -1, -1 };
  return &_AppBaseRestService;
}

+ (void)initialize {
  if (self == [AppBaseRestService class]) {
    AppBaseRestService_logger = JavaUtilLoggingLogger_getLoggerWithNSString_([AppBaseRestService_class_() getName]);
    J2OBJC_SET_INITIALIZED(AppBaseRestService)
  }
}

@end

void AppBaseRestService_initWithNSString_(AppBaseRestService *self, NSString *baseUrl) {
  AppBaseRestService_initWithNSString_withInt_(self, baseUrl, 10000);
}

AppBaseRestService *new_AppBaseRestService_initWithNSString_(NSString *baseUrl) {
  J2OBJC_NEW_IMPL(AppBaseRestService, initWithNSString_, baseUrl)
}

AppBaseRestService *create_AppBaseRestService_initWithNSString_(NSString *baseUrl) {
  J2OBJC_CREATE_IMPL(AppBaseRestService, initWithNSString_, baseUrl)
}

void AppBaseRestService_initWithNSString_withInt_(AppBaseRestService *self, NSString *baseUrl, jint timeout) {
  NSObject_init(self);
  self->baseUrl_ = baseUrl;
  self->timeout_ = timeout;
  self->headers_ = new_JavaUtilHashMap_init();
}

AppBaseRestService *new_AppBaseRestService_initWithNSString_withInt_(NSString *baseUrl, jint timeout) {
  J2OBJC_NEW_IMPL(AppBaseRestService, initWithNSString_withInt_, baseUrl, timeout)
}

AppBaseRestService *create_AppBaseRestService_initWithNSString_withInt_(NSString *baseUrl, jint timeout) {
  J2OBJC_CREATE_IMPL(AppBaseRestService, initWithNSString_withInt_, baseUrl, timeout)
}

JavaNetHttpURLConnection *AppBaseRestService_getHttpConnectionWithNSString_(AppBaseRestService *self, NSString *path) {
  JavaNetHttpURLConnection *conn = nil;
  JavaNetURL *url = new_JavaNetURL_initWithNSString_(path);
  [((JavaUtilLoggingLogger *) nil_chk(AppBaseRestService_logger)) infoWithNSString:JreStrcat("$$", @"HTTP CONNECT: ", path)];
  conn = (JavaNetHttpURLConnection *) cast_chk([url openConnection], [JavaNetHttpURLConnection class]);
  for (NSString * __strong name in nil_chk([((id<JavaUtilMap>) nil_chk(self->headers_)) keySet])) {
    [((JavaNetHttpURLConnection *) nil_chk(conn)) setRequestPropertyWithNSString:name withNSString:[((id<JavaUtilMap>) nil_chk(self->headers_)) getWithId:name]];
  }
  [((JavaNetHttpURLConnection *) nil_chk(conn)) setInstanceFollowRedirectsWithBoolean:false];
  [conn setRequestPropertyWithNSString:@"charset" withNSString:@"utf-8"];
  [conn setUseCachesWithBoolean:false];
  [conn setConnectTimeoutWithInt:self->timeout_];
  [conn setReadTimeoutWithInt:self->timeout_];
  [conn setAllowUserInteractionWithBoolean:false];
  return conn;
}

NSString *AppBaseRestService_postOrPutWithNSString_withBoolean_(AppBaseRestService *self, NSString *entity, jboolean put) {
  NSString *content = @"";
  NSString *path = self->baseUrl_;
  JavaNetHttpURLConnection *conn = nil;
  NSString *output = nil;
  if (self->action_ != nil) (void) JreStrAppendStrong(&path, "C$", '/', self->action_);
  IOSByteArray *postData = [((NSString *) nil_chk(entity)) java_getBytesWithCharset:JreLoadStatic(JavaNioCharsetStandardCharsets, UTF_8)];
  jint postDataLength = ((IOSByteArray *) nil_chk(postData))->size_;
  [((JavaUtilLoggingLogger *) nil_chk(AppBaseRestService_logger)) infoWithNSString:JreStrcat("$$$$", @"# call ", (put ? @"put" : @"post"), @" from resource ", path)];
  [AppBaseRestService_logger infoWithNSString:JreStrcat("$$", @"# POST  ", entity)];
  @try {
    conn = AppBaseRestService_getHttpConnectionWithNSString_(self, path);
    [((JavaNetHttpURLConnection *) nil_chk(conn)) setDoOutputWithBoolean:true];
    if (put) [conn setRequestMethodWithNSString:@"PUT"];
    else [conn setRequestMethodWithNSString:@"POST"];
    [conn setRequestPropertyWithNSString:@"Content-Length" withNSString:JavaLangInteger_toStringWithInt_(postDataLength)];
    JavaIoDataOutputStream *dataWriter = new_JavaIoDataOutputStream_initWithJavaIoOutputStream_([conn getOutputStream]);
    [dataWriter writeWithByteArray:postData];
    [dataWriter flush];
    [dataWriter close];
    [conn connect];
    AppBaseRestService_tratarErroWithJavaNetHttpURLConnection_(self, conn);
    JavaIoBufferedReader *br = new_JavaIoBufferedReader_initWithJavaIoReader_(new_JavaIoInputStreamReader_initWithJavaIoInputStream_([conn getInputStream]));
    while ((output = [br readLine]) != nil) {
      (void) JreStrAppendStrong(&content, "$", output);
    }
    if (content == nil || [content java_length] == 0) {
      [AppBaseRestService_logger infoWithNSString:@"# output result is empty "];
    }
    [AppBaseRestService_logger infoWithNSString:@"######################"];
    [AppBaseRestService_logger infoWithNSString:JreStrcat("$$", @"#### content=", content)];
    [AppBaseRestService_logger infoWithNSString:@"######################"];
  }
  @catch (JavaNetSocketTimeoutException *e) {
    @throw new_AppBaseRestException_initWithInt_withNSString_(408, @"O servidor parece estar off-line. Tente novamente mais tarde.");
  }
  @catch (JavaLangException *e) {
    [AppBaseRestService_logger logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, SEVERE) withNSString:[e getMessage] withJavaLangThrowable:e];
    @throw new_AppBaseRestException_initWithNSString_withJavaLangException_([e getMessage], e);
  }
  @finally {
    if (conn != nil) [conn disconnect];
  }
  return content;
}

void AppBaseRestService_tratarErroWithJavaNetHttpURLConnection_(AppBaseRestService *self, JavaNetHttpURLConnection *conn) {
  if ([((JavaNetHttpURLConnection *) nil_chk(conn)) getResponseCode] != 200) {
    JavaIoBufferedReader *brError = new_JavaIoBufferedReader_initWithJavaIoReader_(new_JavaIoInputStreamReader_initWithJavaIoInputStream_([conn getErrorStream]));
    NSString *outputError = nil;
    NSString *contentError = @"";
    while ((outputError = [brError readLine]) != nil) {
      (void) JreStrAppendStrong(&contentError, "$", outputError);
    }
    if (contentError == nil || [contentError java_length] == 0) {
      [((JavaUtilLoggingLogger *) nil_chk(AppBaseRestService_logger)) infoWithNSString:@"# output result is empty "];
    }
    [brError close];
    [((JavaUtilLoggingLogger *) nil_chk(AppBaseRestService_logger)) infoWithNSString:JreStrcat("$I$$", @"# http result: ", [conn getResponseCode], @". Message = ", contentError)];
    jint code = [conn getResponseCode];
    if ([contentError java_contains:@"network connection not found"]) {
      contentError = @"Verifique sua conex\u00e3o com a internet.";
    }
    else if ([contentError java_contains:@"unauthorized"] || [contentError java_contains:@"bad credentials"] || code == 401) {
      contentError = @"Acesso Negado. Verifique seus dados de acesso.";
    }
    else if ([contentError java_contains:@"conneciton refused"]) {
      contentError = @"O servidor parece estar off-line. Tente novamente mais tarde.";
    }
    else if ([contentError java_contains:@"timeout"]) {
      contentError = @"O servidor demorou para responder. Tente novamente mais tarde.";
    }
    @throw new_AppBaseRestException_initWithInt_withNSString_([conn getResponseCode], contentError);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AppBaseRestService)

J2OBJC_NAME_MAPPING(AppBaseRestService, "br.com.mobilemind.j2objc.rest", "AppBase")

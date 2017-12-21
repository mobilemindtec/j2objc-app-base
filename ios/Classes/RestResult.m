//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/RestResult.java
//

#include "J2ObjC_source.h"
#include "RestResult.h"
#include "java/util/List.h"

@interface AppBaseRestResult () {
 @public
  jboolean error_;
  NSString *message_;
  id result_;
  id<JavaUtilList> results_;
}

@end

J2OBJC_FIELD_SETTER(AppBaseRestResult, message_, NSString *)
J2OBJC_FIELD_SETTER(AppBaseRestResult, result_, id)
J2OBJC_FIELD_SETTER(AppBaseRestResult, results_, id<JavaUtilList>)

@implementation AppBaseRestResult

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AppBaseRestResult_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithBoolean:(jboolean)error
                   withNSString:(NSString *)message {
  AppBaseRestResult_initWithBoolean_withNSString_(self, error, message);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message {
  AppBaseRestResult_initWithNSString_(self, message);
  return self;
}

- (instancetype)initWithId:(id)result {
  AppBaseRestResult_initWithId_(self, result);
  return self;
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)results {
  AppBaseRestResult_initWithJavaUtilList_(self, results);
  return self;
}

- (jboolean)isError {
  return error_;
}

- (void)setErrorWithBoolean:(jboolean)error {
  self->error_ = error;
}

- (NSString *)getMessage {
  return message_;
}

- (void)setMessageWithNSString:(NSString *)message {
  self->message_ = message;
}

- (id)getResult {
  return result_;
}

- (void)setResultWithId:(id)result {
  self->result_ = result;
}

- (id<JavaUtilList>)getResults {
  return results_;
}

- (void)setResultsWithJavaUtilList:(id<JavaUtilList>)results {
  self->results_ = results;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, 3, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, 5, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 9, -1, -1 },
    { NULL, "V", 0x1, 10, 2, -1, 3, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 11, -1, -1 },
    { NULL, "V", 0x1, 12, 4, -1, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithBoolean:withNSString:);
  methods[2].selector = @selector(initWithNSString:);
  methods[3].selector = @selector(initWithId:);
  methods[4].selector = @selector(initWithJavaUtilList:);
  methods[5].selector = @selector(isError);
  methods[6].selector = @selector(setErrorWithBoolean:);
  methods[7].selector = @selector(getMessage);
  methods[8].selector = @selector(setMessageWithNSString:);
  methods[9].selector = @selector(getResult);
  methods[10].selector = @selector(setResultWithId:);
  methods[11].selector = @selector(getResults);
  methods[12].selector = @selector(setResultsWithJavaUtilList:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "error_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "message_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "result_", "LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, 13, -1 },
    { "results_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 14, -1 },
  };
  static const void *ptrTable[] = { "ZLNSString;", "LNSString;", "LNSObject;", "(TT;)V", "LJavaUtilList;", "(Ljava/util/List<TT;>;)V", "setError", "Z", "setMessage", "()TT;", "setResult", "()Ljava/util/List<TT;>;", "setResults", "TT;", "Ljava/util/List<TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _AppBaseRestResult = { "RestResult", "br.com.mobilemind.j2objc.rest", ptrTable, methods, fields, 7, 0x1, 13, 4, -1, -1, -1, 15, -1 };
  return &_AppBaseRestResult;
}

@end

void AppBaseRestResult_init(AppBaseRestResult *self) {
  NSObject_init(self);
}

AppBaseRestResult *new_AppBaseRestResult_init() {
  J2OBJC_NEW_IMPL(AppBaseRestResult, init)
}

AppBaseRestResult *create_AppBaseRestResult_init() {
  J2OBJC_CREATE_IMPL(AppBaseRestResult, init)
}

void AppBaseRestResult_initWithBoolean_withNSString_(AppBaseRestResult *self, jboolean error, NSString *message) {
  NSObject_init(self);
  self->error_ = error;
  self->message_ = message;
}

AppBaseRestResult *new_AppBaseRestResult_initWithBoolean_withNSString_(jboolean error, NSString *message) {
  J2OBJC_NEW_IMPL(AppBaseRestResult, initWithBoolean_withNSString_, error, message)
}

AppBaseRestResult *create_AppBaseRestResult_initWithBoolean_withNSString_(jboolean error, NSString *message) {
  J2OBJC_CREATE_IMPL(AppBaseRestResult, initWithBoolean_withNSString_, error, message)
}

void AppBaseRestResult_initWithNSString_(AppBaseRestResult *self, NSString *message) {
  NSObject_init(self);
  self->message_ = message;
}

AppBaseRestResult *new_AppBaseRestResult_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(AppBaseRestResult, initWithNSString_, message)
}

AppBaseRestResult *create_AppBaseRestResult_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(AppBaseRestResult, initWithNSString_, message)
}

void AppBaseRestResult_initWithId_(AppBaseRestResult *self, id result) {
  NSObject_init(self);
  self->result_ = result;
}

AppBaseRestResult *new_AppBaseRestResult_initWithId_(id result) {
  J2OBJC_NEW_IMPL(AppBaseRestResult, initWithId_, result)
}

AppBaseRestResult *create_AppBaseRestResult_initWithId_(id result) {
  J2OBJC_CREATE_IMPL(AppBaseRestResult, initWithId_, result)
}

void AppBaseRestResult_initWithJavaUtilList_(AppBaseRestResult *self, id<JavaUtilList> results) {
  NSObject_init(self);
  self->results_ = results;
}

AppBaseRestResult *new_AppBaseRestResult_initWithJavaUtilList_(id<JavaUtilList> results) {
  J2OBJC_NEW_IMPL(AppBaseRestResult, initWithJavaUtilList_, results)
}

AppBaseRestResult *create_AppBaseRestResult_initWithJavaUtilList_(id<JavaUtilList> results) {
  J2OBJC_CREATE_IMPL(AppBaseRestResult, initWithJavaUtilList_, results)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AppBaseRestResult)

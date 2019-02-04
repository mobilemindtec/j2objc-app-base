//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/Transformer.java
//

#include "FieldNamingPolicy.h"
#include "Gson.h"
#include "GsonBuilder.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonArray.h"
#include "JsonElement.h"
#include "JsonObject.h"
#include "JsonParser.h"
#include "Response.h"
#include "Transformer.h"
#include "TypeToken.h"
#include "java/io/BufferedReader.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/Reader.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/reflect/Type.h"
#include "java/util/List.h"

@interface BrComMobilemindJ2objcHttpTransformer () {
 @public
  BrComMobilemindJ2objcHttpResponse *response_;
}

- (JavaIoReader *)reader;

@end

J2OBJC_FIELD_SETTER(BrComMobilemindJ2objcHttpTransformer, response_, BrComMobilemindJ2objcHttpResponse *)

__attribute__((unused)) static JavaIoReader *BrComMobilemindJ2objcHttpTransformer_reader(BrComMobilemindJ2objcHttpTransformer *self);

@interface BrComMobilemindJ2objcHttpTransformer_1 : GsonTypeToken

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(BrComMobilemindJ2objcHttpTransformer_1)

__attribute__((unused)) static void BrComMobilemindJ2objcHttpTransformer_1_init(BrComMobilemindJ2objcHttpTransformer_1 *self);

__attribute__((unused)) static BrComMobilemindJ2objcHttpTransformer_1 *new_BrComMobilemindJ2objcHttpTransformer_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static BrComMobilemindJ2objcHttpTransformer_1 *create_BrComMobilemindJ2objcHttpTransformer_1_init(void);

@interface BrComMobilemindJ2objcHttpTransformer_2 : GsonTypeToken

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(BrComMobilemindJ2objcHttpTransformer_2)

__attribute__((unused)) static void BrComMobilemindJ2objcHttpTransformer_2_init(BrComMobilemindJ2objcHttpTransformer_2 *self);

__attribute__((unused)) static BrComMobilemindJ2objcHttpTransformer_2 *new_BrComMobilemindJ2objcHttpTransformer_2_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static BrComMobilemindJ2objcHttpTransformer_2 *create_BrComMobilemindJ2objcHttpTransformer_2_init(void);

NSString *BrComMobilemindJ2objcHttpTransformer_TIMESTAMP_FORMAT_JSON = @"yyyy-MM-dd'T'HH:mm:ssXXX";

@implementation BrComMobilemindJ2objcHttpTransformer

+ (NSString *)TIMESTAMP_FORMAT_JSON {
  return BrComMobilemindJ2objcHttpTransformer_TIMESTAMP_FORMAT_JSON;
}

+ (void)setTIMESTAMP_FORMAT_JSON:(NSString *)value {
  BrComMobilemindJ2objcHttpTransformer_TIMESTAMP_FORMAT_JSON = value;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  BrComMobilemindJ2objcHttpTransformer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setResponseWithBrComMobilemindJ2objcHttpResponse:(BrComMobilemindJ2objcHttpResponse *)response {
  self->response_ = response;
}

- (GsonGson *)makeGson {
  return [((GsonGsonBuilder *) nil_chk([((GsonGsonBuilder *) nil_chk([new_GsonGsonBuilder_init() setFieldNamingPolicyWithGsonFieldNamingPolicy:JreLoadEnum(GsonFieldNamingPolicy, UPPER_CAMEL_CASE)])) setDateFormatWithNSString:BrComMobilemindJ2objcHttpTransformer_TIMESTAMP_FORMAT_JSON])) create];
}

- (id<JavaUtilList>)list {
  GsonGson *gson = [self makeGson];
  id<JavaLangReflectType> typeToken = [new_BrComMobilemindJ2objcHttpTransformer_1_init() getType];
  return [self listWithJavaLangReflectType:typeToken withGsonGson:gson];
}

- (id<JavaUtilList>)listWithJavaLangReflectType:(id<JavaLangReflectType>)typeToken {
  GsonGson *gson = [self makeGson];
  return [self listWithJavaLangReflectType:typeToken withGsonGson:gson];
}

- (id<JavaUtilList>)listWithJavaLangReflectType:(id<JavaLangReflectType>)typeToken
                                   withGsonGson:(GsonGson *)gson {
  NSString *reader = [self string];
  return [((GsonGson *) nil_chk(gson)) fromJsonWithNSString:reader withJavaLangReflectType:typeToken];
}

- (id)object {
  GsonGson *gson = [self makeGson];
  id<JavaLangReflectType> typeToken = [new_BrComMobilemindJ2objcHttpTransformer_2_init() getType];
  return [self objectWithJavaLangReflectType:typeToken withGsonGson:gson];
}

- (id)objectWithIOSClass:(IOSClass *)clazz {
  GsonGson *gson = [self makeGson];
  return [self objectWithIOSClass:clazz withGsonGson:gson];
}

- (id)objectWithIOSClass:(IOSClass *)clazz
            withGsonGson:(GsonGson *)gson {
  NSString *reader = [self string];
  return [((GsonGson *) nil_chk(gson)) fromJsonWithNSString:reader withIOSClass:clazz];
}

- (id)objectWithJavaLangReflectType:(id<JavaLangReflectType>)typeToken {
  GsonGson *gson = [self makeGson];
  return [self objectWithJavaLangReflectType:typeToken withGsonGson:gson];
}

- (id)objectWithJavaLangReflectType:(id<JavaLangReflectType>)typeToken
                       withGsonGson:(GsonGson *)gson {
  NSString *reader = [self string];
  return [((GsonGson *) nil_chk(gson)) fromJsonWithNSString:reader withJavaLangReflectType:typeToken];
}

- (GsonJsonObject *)json {
  GsonJsonParser *parser = new_GsonJsonParser_init();
  NSString *reader = [self string];
  return [((GsonJsonElement *) nil_chk([parser parseWithNSString:reader])) getAsJsonObject];
}

- (GsonJsonArray *)jsonArray {
  GsonJsonParser *parser = new_GsonJsonParser_init();
  NSString *reader = [self string];
  return [((GsonJsonElement *) nil_chk([parser parseWithNSString:reader])) getAsJsonArray];
}

- (JavaIoReader *)reader {
  return BrComMobilemindJ2objcHttpTransformer_reader(self);
}

- (NSString *)string {
  JavaIoBufferedReader *reader = (JavaIoBufferedReader *) cast_chk(BrComMobilemindJ2objcHttpTransformer_reader(self), [JavaIoBufferedReader class]);
  JavaLangStringBuilder *content = new_JavaLangStringBuilder_init();
  NSString *output = nil;
  @try {
    while ((output = [((JavaIoBufferedReader *) nil_chk(reader)) readLine]) != nil) {
      (void) [content appendWithNSString:output];
    }
    return [content description];
  }
  @finally {
    [reader close];
  }
}

- (NSString *)errorString {
  JavaIoBufferedReader *reader = new_JavaIoBufferedReader_initWithJavaIoReader_(new_JavaIoInputStreamReader_initWithJavaIoInputStream_([((BrComMobilemindJ2objcHttpResponse *) nil_chk(self->response_)) getError]));
  JavaLangStringBuilder *content = new_JavaLangStringBuilder_init();
  NSString *output = nil;
  @try {
    while ((output = [reader readLine]) != nil) {
      (void) [content appendWithNSString:output];
    }
    return [content description];
  }
  @finally {
    [reader close];
  }
}

- (GsonJsonObject *)errorJson {
  GsonJsonParser *parser = new_GsonJsonParser_init();
  return [((GsonJsonElement *) nil_chk([parser parseWithNSString:[self errorString]])) getAsJsonObject];
}

- (id)errorObjectWithIOSClass:(IOSClass *)clazz {
  GsonGson *gson = [new_GsonGsonBuilder_init() create];
  return [self errorObjectWithIOSClass:clazz withGsonGson:gson];
}

- (id)errorObjectWithIOSClass:(IOSClass *)clazz
                 withGsonGson:(GsonGson *)gson {
  return [((GsonGson *) nil_chk(gson)) fromJsonWithNSString:[self errorString] withIOSClass:clazz];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LGsonGson;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, 2, 3, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, 4, 5, 2, 6, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, 4, 7, 2, 8, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, 2, 9, -1, -1 },
    { NULL, "LNSObject;", 0x1, 10, 11, 2, 12, -1, -1 },
    { NULL, "LNSObject;", 0x1, 10, 13, 2, 14, -1, -1 },
    { NULL, "LNSObject;", 0x1, 10, 5, 2, 15, -1, -1 },
    { NULL, "LNSObject;", 0x1, 10, 7, 2, 16, -1, -1 },
    { NULL, "LGsonJsonObject;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "LGsonJsonArray;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "LJavaIoReader;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "LGsonJsonObject;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 17, 11, 2, 12, -1, -1 },
    { NULL, "LNSObject;", 0x1, 17, 13, 2, 14, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setResponseWithBrComMobilemindJ2objcHttpResponse:);
  methods[2].selector = @selector(makeGson);
  methods[3].selector = @selector(list);
  methods[4].selector = @selector(listWithJavaLangReflectType:);
  methods[5].selector = @selector(listWithJavaLangReflectType:withGsonGson:);
  methods[6].selector = @selector(object);
  methods[7].selector = @selector(objectWithIOSClass:);
  methods[8].selector = @selector(objectWithIOSClass:withGsonGson:);
  methods[9].selector = @selector(objectWithJavaLangReflectType:);
  methods[10].selector = @selector(objectWithJavaLangReflectType:withGsonGson:);
  methods[11].selector = @selector(json);
  methods[12].selector = @selector(jsonArray);
  methods[13].selector = @selector(reader);
  methods[14].selector = @selector(string);
  methods[15].selector = @selector(errorString);
  methods[16].selector = @selector(errorJson);
  methods[17].selector = @selector(errorObjectWithIOSClass:);
  methods[18].selector = @selector(errorObjectWithIOSClass:withGsonGson:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TIMESTAMP_FORMAT_JSON", "LNSString;", .constantValue.asLong = 0, 0x9, -1, 18, -1, -1 },
    { "response_", "LBrComMobilemindJ2objcHttpResponse;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setResponse", "LBrComMobilemindJ2objcHttpResponse;", "LJavaIoIOException;", "<T:Ljava/lang/Object;>()Ljava/util/List<TT;>;", "list", "LJavaLangReflectType;", "<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;)Ljava/util/List<TT;>;", "LJavaLangReflectType;LGsonGson;", "<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Lcom/google/gson/Gson;)Ljava/util/List<TT;>;", "<T:Ljava/lang/Object;>()TT;", "object", "LIOSClass;", "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;", "LIOSClass;LGsonGson;", "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lcom/google/gson/Gson;)TT;", "<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;)TT;", "<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Lcom/google/gson/Gson;)TT;", "errorObject", &BrComMobilemindJ2objcHttpTransformer_TIMESTAMP_FORMAT_JSON };
  static const J2ObjcClassInfo _BrComMobilemindJ2objcHttpTransformer = { "Transformer", "br.com.mobilemind.j2objc.http", ptrTable, methods, fields, 7, 0x1, 19, 2, -1, -1, -1, -1, -1 };
  return &_BrComMobilemindJ2objcHttpTransformer;
}

@end

void BrComMobilemindJ2objcHttpTransformer_init(BrComMobilemindJ2objcHttpTransformer *self) {
  NSObject_init(self);
}

BrComMobilemindJ2objcHttpTransformer *new_BrComMobilemindJ2objcHttpTransformer_init() {
  J2OBJC_NEW_IMPL(BrComMobilemindJ2objcHttpTransformer, init)
}

BrComMobilemindJ2objcHttpTransformer *create_BrComMobilemindJ2objcHttpTransformer_init() {
  J2OBJC_CREATE_IMPL(BrComMobilemindJ2objcHttpTransformer, init)
}

JavaIoReader *BrComMobilemindJ2objcHttpTransformer_reader(BrComMobilemindJ2objcHttpTransformer *self) {
  JavaIoBufferedReader *br = new_JavaIoBufferedReader_initWithJavaIoReader_(new_JavaIoInputStreamReader_initWithJavaIoInputStream_([((BrComMobilemindJ2objcHttpResponse *) nil_chk(self->response_)) getEntity]));
  return br;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BrComMobilemindJ2objcHttpTransformer)

@implementation BrComMobilemindJ2objcHttpTransformer_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  BrComMobilemindJ2objcHttpTransformer_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LBrComMobilemindJ2objcHttpTransformer;", "list", "Lcom/google/gson/reflect/TypeToken<Ljava/util/List<TT;>;>;" };
  static const J2ObjcClassInfo _BrComMobilemindJ2objcHttpTransformer_1 = { "", "br.com.mobilemind.j2objc.http", ptrTable, methods, NULL, 7, 0x8018, 1, 0, 0, -1, 1, 2, -1 };
  return &_BrComMobilemindJ2objcHttpTransformer_1;
}

@end

void BrComMobilemindJ2objcHttpTransformer_1_init(BrComMobilemindJ2objcHttpTransformer_1 *self) {
  GsonTypeToken_init(self);
}

BrComMobilemindJ2objcHttpTransformer_1 *new_BrComMobilemindJ2objcHttpTransformer_1_init() {
  J2OBJC_NEW_IMPL(BrComMobilemindJ2objcHttpTransformer_1, init)
}

BrComMobilemindJ2objcHttpTransformer_1 *create_BrComMobilemindJ2objcHttpTransformer_1_init() {
  J2OBJC_CREATE_IMPL(BrComMobilemindJ2objcHttpTransformer_1, init)
}

@implementation BrComMobilemindJ2objcHttpTransformer_2

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  BrComMobilemindJ2objcHttpTransformer_2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LBrComMobilemindJ2objcHttpTransformer;", "object", "Lcom/google/gson/reflect/TypeToken<TT;>;" };
  static const J2ObjcClassInfo _BrComMobilemindJ2objcHttpTransformer_2 = { "", "br.com.mobilemind.j2objc.http", ptrTable, methods, NULL, 7, 0x8018, 1, 0, 0, -1, 1, 2, -1 };
  return &_BrComMobilemindJ2objcHttpTransformer_2;
}

@end

void BrComMobilemindJ2objcHttpTransformer_2_init(BrComMobilemindJ2objcHttpTransformer_2 *self) {
  GsonTypeToken_init(self);
}

BrComMobilemindJ2objcHttpTransformer_2 *new_BrComMobilemindJ2objcHttpTransformer_2_init() {
  J2OBJC_NEW_IMPL(BrComMobilemindJ2objcHttpTransformer_2, init)
}

BrComMobilemindJ2objcHttpTransformer_2 *create_BrComMobilemindJ2objcHttpTransformer_2_init() {
  J2OBJC_CREATE_IMPL(BrComMobilemindJ2objcHttpTransformer_2, init)
}

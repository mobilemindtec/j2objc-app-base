//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/DateConverter.java
//

#include "DateConverter.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/text/ParseException.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/Date.h"
#include "java/util/logging/Logger.h"

inline JavaTextSimpleDateFormat *AppBaseDateConverter_get_format(void);
inline JavaTextSimpleDateFormat *AppBaseDateConverter_set_format(JavaTextSimpleDateFormat *value);
static JavaTextSimpleDateFormat *AppBaseDateConverter_format;
J2OBJC_STATIC_FIELD_OBJ(AppBaseDateConverter, format, JavaTextSimpleDateFormat *)

J2OBJC_INITIALIZED_DEFN(AppBaseDateConverter)

JavaUtilLoggingLogger *AppBaseDateConverter_logger;

@implementation AppBaseDateConverter

+ (JavaUtilLoggingLogger *)logger {
  return AppBaseDateConverter_logger;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AppBaseDateConverter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)fromWithJavaUtilDate:(JavaUtilDate *)date {
  return AppBaseDateConverter_fromWithJavaUtilDate_(date);
}

+ (JavaUtilDate *)toWithNSString:(NSString *)date {
  return AppBaseDateConverter_toWithNSString_(date);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x9, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(fromWithJavaUtilDate:);
  methods[2].selector = @selector(toWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "logger", "LJavaUtilLoggingLogger;", .constantValue.asLong = 0, 0x1c, -1, 4, -1, -1 },
    { "format", "LJavaTextSimpleDateFormat;", .constantValue.asLong = 0, 0xa, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "from", "LJavaUtilDate;", "to", "LNSString;", &AppBaseDateConverter_logger, &AppBaseDateConverter_format };
  static const J2ObjcClassInfo _AppBaseDateConverter = { "DateConverter", "br.com.mobilemind.j2objc.util", ptrTable, methods, fields, 7, 0x1, 3, 2, -1, -1, -1, -1, -1 };
  return &_AppBaseDateConverter;
}

+ (void)initialize {
  if (self == [AppBaseDateConverter class]) {
    AppBaseDateConverter_logger = JavaUtilLoggingLogger_getLoggerWithNSString_([AppBaseDateConverter_class_() getName]);
    AppBaseDateConverter_format = new_JavaTextSimpleDateFormat_initWithNSString_(@"yyyy-MM-dd HH:mm:ss.SSS");
    J2OBJC_SET_INITIALIZED(AppBaseDateConverter)
  }
}

@end

void AppBaseDateConverter_init(AppBaseDateConverter *self) {
  NSObject_init(self);
}

AppBaseDateConverter *new_AppBaseDateConverter_init() {
  J2OBJC_NEW_IMPL(AppBaseDateConverter, init)
}

AppBaseDateConverter *create_AppBaseDateConverter_init() {
  J2OBJC_CREATE_IMPL(AppBaseDateConverter, init)
}

NSString *AppBaseDateConverter_fromWithJavaUtilDate_(JavaUtilDate *date) {
  AppBaseDateConverter_initialize();
  if (date == nil) return nil;
  return [((JavaTextSimpleDateFormat *) nil_chk(AppBaseDateConverter_format)) formatWithJavaUtilDate:date];
}

JavaUtilDate *AppBaseDateConverter_toWithNSString_(NSString *date) {
  AppBaseDateConverter_initialize();
  if (date == nil) return nil;
  if ([date java_hasSuffix:@"00:00:00.000"]) {
    date = [date java_replace:@"00:00:00.000" withSequence:@"01:01:01.001"];
  }
  @try {
    return [((JavaTextSimpleDateFormat *) nil_chk(AppBaseDateConverter_format)) parseWithNSString:date];
  }
  @catch (JavaTextParseException *e) {
    [((JavaUtilLoggingLogger *) nil_chk(AppBaseDateConverter_logger)) infoWithNSString:JreStrcat("$$", @"DateConverter: to ", [e getMessage])];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AppBaseDateConverter)
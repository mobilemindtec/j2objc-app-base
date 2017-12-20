//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/SyncStatus.java
//

#include "J2ObjC_source.h"
#include "SyncStatus.h"

NSString *AppBaseSyncStatus_NONE = @"NONE";
NSString *AppBaseSyncStatus_CHANGED = @"CHANGED";
NSString *AppBaseSyncStatus_DELETED = @"DELETED";
NSString *AppBaseSyncStatus_SYNC_OK = @"SYNC_OK";

@implementation AppBaseSyncStatus

+ (NSString *)NONE {
  return AppBaseSyncStatus_NONE;
}

+ (void)setNONE:(NSString *)value {
  AppBaseSyncStatus_NONE = value;
}

+ (NSString *)CHANGED {
  return AppBaseSyncStatus_CHANGED;
}

+ (void)setCHANGED:(NSString *)value {
  AppBaseSyncStatus_CHANGED = value;
}

+ (NSString *)DELETED {
  return AppBaseSyncStatus_DELETED;
}

+ (void)setDELETED:(NSString *)value {
  AppBaseSyncStatus_DELETED = value;
}

+ (NSString *)SYNC_OK {
  return AppBaseSyncStatus_SYNC_OK;
}

+ (void)setSYNC_OK:(NSString *)value {
  AppBaseSyncStatus_SYNC_OK = value;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AppBaseSyncStatus_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NONE", "LNSString;", .constantValue.asLong = 0, 0x9, -1, 0, -1, -1 },
    { "CHANGED", "LNSString;", .constantValue.asLong = 0, 0x9, -1, 1, -1, -1 },
    { "DELETED", "LNSString;", .constantValue.asLong = 0, 0x9, -1, 2, -1, -1 },
    { "SYNC_OK", "LNSString;", .constantValue.asLong = 0, 0x9, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { &AppBaseSyncStatus_NONE, &AppBaseSyncStatus_CHANGED, &AppBaseSyncStatus_DELETED, &AppBaseSyncStatus_SYNC_OK };
  static const J2ObjcClassInfo _AppBaseSyncStatus = { "SyncStatus", "br.com.mobilemind.j2objc.model", ptrTable, methods, fields, 7, 0x1, 1, 4, -1, -1, -1, -1, -1 };
  return &_AppBaseSyncStatus;
}

@end

void AppBaseSyncStatus_init(AppBaseSyncStatus *self) {
  NSObject_init(self);
}

AppBaseSyncStatus *new_AppBaseSyncStatus_init() {
  J2OBJC_NEW_IMPL(AppBaseSyncStatus, init)
}

AppBaseSyncStatus *create_AppBaseSyncStatus_init() {
  J2OBJC_CREATE_IMPL(AppBaseSyncStatus, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AppBaseSyncStatus)

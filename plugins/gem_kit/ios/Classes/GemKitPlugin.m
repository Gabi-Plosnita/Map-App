#import "GemKitPlugin.h"
#if __has_include(<gem_kit/gem_kit-Swift.h>)
#import <gem_kit/gem_kit-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "gem_kit-Swift.h"
#endif

@implementation GemKitPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar
{
    [SwiftGemKitPlugin registerWithRegistrar:registrar];
}

@end

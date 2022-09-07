//
//  ${POD_NAME}Context.m
//  ${POD_NAME}
//
//  Created by ${USER_NAME} on ${DATE}.
//

#import "${POD_NAME}Context.h"

@implementation ${POD_NAME}Context
#pragma mark -获取图片-
+(UIImage *)imageNamed:(NSString *)name{
    UIImage *image = [UIImage imageNamed:name inBundle:[self getPlatformBundle] compatibleWithTraitCollection:nil];
    return image;
}

#pragma mark -获取当前bundle-
+(NSBundle *)getPlatformBundle {
    NSBundle *currentBundle = [NSBundle bundleForClass:self.class];
    NSURL *bundleURL = [currentBundle URLForResource:@"${POD_NAME}" withExtension:@"bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithURL:bundleURL];
    return resourceBundle;
}

#pragma mark - 获取组件提示语
+ (NSString * _Nonnull (^)(NSString * _Nonnull))localMessage{
    return ^NSString *(NSString *key){
        return NSLocalizedStringFromTableInBundle(key, @"${POD_NAME}", [self getPlatformBundle], nil);
    };
}
@end

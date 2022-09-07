//
//  ${POD_NAME}Context.h
//  ${POD_NAME}
//
//  Created by ${USER_NAME} on ${DATE}.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ${POD_NAME}Context : NSObject

#pragma mark -获取图片-
+(UIImage *)imageNamed:(NSString *)name;

#pragma mark -获取组件自定义提示语-
+ (NSString* (^)(NSString *key))localMessage;

@end

NS_ASSUME_NONNULL_END

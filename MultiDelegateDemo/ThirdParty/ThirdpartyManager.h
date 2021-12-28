//
//  ThirdpartyManager.h
//  MultiDelegateDemo
//
//  Created by LarryZhang on 2021/12/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ThirdpartyManagerDelegate <NSObject>

@optional

- (void)messageFrom:(NSString *)from to:(NSString *)to content:(id)content;

@end

@interface ThirdpartyManager : NSObject

@property (nonatomic, assign) NSUInteger index;


@property (nonatomic, weak) id<ThirdpartyManagerDelegate> delegate;



+ (instancetype)sharedManager;

@end

NS_ASSUME_NONNULL_END

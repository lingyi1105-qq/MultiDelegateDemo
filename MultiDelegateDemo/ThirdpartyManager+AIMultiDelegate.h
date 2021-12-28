//
//  ThirdpartyManager+AIMultiDelegate.h
//  MultiDelegateDemo
//
//  Created by LarryZhang on 2021/12/21.
//

#import "ThirdpartyManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface ThirdpartyManager (AIMultiDelegate)

- (void)initMultiDelegate;

- (void)addMultiDelegate:(id)delegate;

- (void)removeMultiDelegate:(id)delegate;
- (void)removeAllMultiDelegates;


@end

NS_ASSUME_NONNULL_END

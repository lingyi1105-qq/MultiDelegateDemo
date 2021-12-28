//
//  ThirdpartyManager+AIMultiDelegate.m
//  MultiDelegateDemo
//
//  Created by LarryZhang on 2021/12/21.
//

#import "ThirdpartyManager+AIMultiDelegate.h"
#import "AIMultiDelegate.h"

@implementation ThirdpartyManager (AIMultiDelegate)

AIMultiDelegate *_multiDelegate;

#pragma mark ----multiDelegate

- (void)initMultiDelegate {
    if (_multiDelegate == nil) {
        _multiDelegate = [[AIMultiDelegate alloc] init];
    }
    
    self.delegate = (id)_multiDelegate;
}

- (void)addMultiDelegate:(id)delegate {
    [_multiDelegate addDelegate:delegate];
}

- (void)removeMultiDelegate:(id)delegate {
    [_multiDelegate removeDelegate:delegate];
}

- (void)removeAllMultiDelegates {
    [_multiDelegate removeAllDelegates];
}

@end

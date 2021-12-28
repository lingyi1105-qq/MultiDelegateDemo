//
//  ThirdpartyManager.m
//  MultiDelegateDemo
//
//  Created by LarryZhang on 2021/12/21.
//

#import "ThirdpartyManager.h"

@interface ThirdpartyManager ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ThirdpartyManager

+ (instancetype)sharedManager {
    static ThirdpartyManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
        [manager startCount];
    });
    return manager;
}


- (void)startCount {
    if (self.timer != nil) {
        [self.timer invalidate];
        self.timer = nil;
    }
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(perSecondAction) userInfo:nil repeats:YES];
}

- (void)perSecondAction {
    self.index++;
    NSLog(@"ThirdpartyManager self.index: %@", @(self.index));
    
    
    if ([self.delegate respondsToSelector:@selector(messageFrom:to:content:)]) {
        [self.delegate messageFrom:NSStringFromClass(ThirdpartyManager.class) to:@"" content:@(self.index)];
    }
}


@end

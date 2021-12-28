//
//  ViewController.m
//  MultiDelegateDemo
//
//  Created by LarryZhang on 2021/12/21.
//

#import "ViewController.h"
#import "ThirdpartyManager.h"
#import "ThirdpartyManager+AIMultiDelegate.h"

@interface ViewController () <ThirdpartyManagerDelegate>


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (IBAction)delegateAction:(id)sender {
    [ThirdpartyManager sharedManager].delegate = self;
}

- (IBAction)multiDelegateAction:(id)sender {
    [[ThirdpartyManager sharedManager] initMultiDelegate];
    [[ThirdpartyManager sharedManager] addMultiDelegate:self];
    
}


- (void)messageFrom:(NSString *)from to:(NSString *)to content:(id)content {
    NSLog(@"ViewController from:%@ to:%@ content:%@", from, to, content);
}

@end

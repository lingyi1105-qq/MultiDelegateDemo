//
//  NextViewController.m
//  MultiDelegateDemo
//
//  Created by LarryZhang on 2021/12/21.
//

#import "NextViewController.h"
#import "ThirdpartyManager.h"
#import "ThirdpartyManager+AIMultiDelegate.h"

@interface NextViewController () <ThirdpartyManagerDelegate>

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [[ThirdpartyManager sharedManager] removeMultiDelegate:self];
}

- (IBAction)multiDelegateAction:(id)sender {
    [[ThirdpartyManager sharedManager] addMultiDelegate:self];
    
}


- (void)messageFrom:(NSString *)from to:(NSString *)to content:(id)content {
    NSLog(@"NextViewController from:%@ to:%@ content:%@", from, to, content);
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

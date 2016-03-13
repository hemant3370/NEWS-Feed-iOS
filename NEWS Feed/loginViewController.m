//
//  ViewController.m
//  NEWS Feed
//
//  Created by anurag gupta on 12/03/16.
//  Copyright © 2016 hemant. All rights reserved.
//

#import "loginViewController.h"
#import <MessageUI/MessageUI.h>

#import <FBSDKCoreKit/FBSDKCoreKit.h>

#import <FBSDKLoginKit/FBSDKLoginKit.h>

#import <FBSDKShareKit/FBSDKShareKit.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.center = self.view.center;
    
    loginButton.delegate = self;
    loginButton.readPermissions =
    @[@"public_profile", @"email", @"user_friends"];
    loginButton.publishPermissions = @[@"publish_actions"];
    [self.view addSubview:loginButton];
    if ([FBSDKAccessToken currentAccessToken]) {
        
        [self performSegueWithIdentifier:@"toApp" sender:nil];
    }
    }
- (void)  loginButton:(FBSDKLoginButton *)loginButton
didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result
                error:(NSError *)error{
    if (!error) {
        
        [self toHome];
    }
}
-(void) loginButtonDidLogOut:(FBSDKLoginButton *)loginButton{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)toHome{
    if ([FBSDKAccessToken currentAccessToken]) {
    [self performSegueWithIdentifier:@"toApp" sender:nil];
    }
}
@end

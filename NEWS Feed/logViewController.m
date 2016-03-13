//
//  logViewController.m
//  NEWS Feed
//
//  Created by anurag gupta on 13/03/16.
//  Copyright © 2016 hemant. All rights reserved.
//

#import "logViewController.h"
#import <MessageUI/MessageUI.h>

#import <FBSDKCoreKit/FBSDKCoreKit.h>

#import <FBSDKLoginKit/FBSDKLoginKit.h>

#import <FBSDKShareKit/FBSDKShareKit.h>
@interface logViewController ()

@end

@implementation logViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    BOOL token = [[NSUserDefaults standardUserDefaults] boolForKey:@"Token"];
    if (token) {
        [self performSegueWithIdentifier:@"toApp" sender:nil];
    }
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    // Optional: Place the button in the center of your view.
    loginButton.center = self.view.center;
    loginButton.delegate = self;
    loginButton.readPermissions =
    @[@"public_profile", @"email", @"user_friends"];
    loginButton.publishPermissions = @[@"publish_actions"];
    [self.view addSubview:loginButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)  loginButton:(FBSDKLoginButton *)loginButton
didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result
                error:(NSError *)error{
    if (!error) {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"Token"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self toHome];
    }
}
-(void) loginButtonDidLogOut:(FBSDKLoginButton *)loginButton{
    
}
-(void)toHome{
    [self performSegueWithIdentifier:@"toApp" sender:nil];
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

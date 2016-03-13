//
//  wvViewController.h
//  NEWS Feed
//
//  Created by anurag gupta on 13/03/16.
//  Copyright © 2016 hemant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface wvViewController : UIViewController<UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *webview;
@property (nonatomic) NSString *link;
@end

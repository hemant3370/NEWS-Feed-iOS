//
//  newsViewController.h
//  NEWS Feed
//
//  Created by anurag gupta on 13/03/16.
//  Copyright © 2016 hemant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWFeedParser.h"
@interface newsViewController : UIViewController<UITableViewDelegate,MWFeedParserDelegate,UITableViewDataSource>{
    // Parsing
    MWFeedParser *feedParser;
    NSMutableArray *parsedItems;
    
    // Displaying
    NSArray *itemsToDisplay;
    NSDateFormatter *formatter;
}
@property (strong, nonatomic) IBOutlet UITableView *tableview;
@property (nonatomic) NSString *keyword;
@property (nonatomic, strong) NSArray *itemsToDisplay;
@end

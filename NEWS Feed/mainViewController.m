//
//  mainViewController.m
//  NEWS Feed
//
//  Created by anurag gupta on 12/03/16.
//  Copyright © 2016 hemant. All rights reserved.
//

#import "mainViewController.h"
#import "newsViewController.h"

@interface mainViewController ()
{
    NSString *key;
    NSArray *image ;
}
@end

@implementation mainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   image = @[@"world", @"politics", @"health", @"science", @"entertainment", @"sports"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark UITableView Delegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    }

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     key = image[indexPath.row];
    [self performSegueWithIdentifier:@"toNews" sender:nil];
   
    }

#pragma mark -
#pragma mark UITableView Datasource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 54;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return 6;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.0f;
}
-(UIView *) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return nil;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSArray *titles = @[@"  World", @" Politics", @"  Health", @"  Science", @"  Entertainment", @"  Sports"];
   
    cell.textLabel.text = titles[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:image[indexPath.row]];
    return cell;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    newsViewController * dest = segue.destinationViewController;
    [dest setKeyword:key];
}


@end

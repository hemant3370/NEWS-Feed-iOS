

#import <UIKit/UIKit.h>

@interface SIPhoto : NSObject

+ (instancetype)photoWithObjectURL:(NSURL *)objectURL
                             title:(NSString *)title
                            image:(UIImage *)image;

@property (nonatomic, strong) UIImage *mainimage;
@property (nonatomic, strong) NSURL *objectURL;

@property (nonatomic, strong) NSString *title;

@end

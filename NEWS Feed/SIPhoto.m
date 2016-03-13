

#import "SIPhoto.h"

@implementation SIPhoto

+ (instancetype)photoWithObjectURL:(NSURL *)objectURL
                             title:(NSString *)title
                             image:(UIImage *)image
{
  SIPhoto *photo = [[self alloc] init];
  photo.objectURL = objectURL;
  photo.title = title;
  photo.mainimage = image;
  return photo;
}

@end

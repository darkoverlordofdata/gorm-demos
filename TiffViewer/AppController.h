#import <AppKit/AppKit.h>
#import "ImageModel.h"

@interface AppController : NSObject
{
  id window;
  id imageView;
  ImageModel *model;
}
- (void) loadImage: (id)sender;

@end
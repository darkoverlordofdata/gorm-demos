#import "ImageModel.h"

@implementation ImageModel

- (id) init
{
  self = [super init];
  image = nil;
  return self;
}

- (void) dealloc
{
  [image release];
  [super dealloc];
}

- (NSImage *) image
{
  return image;
}

- (void) setImage: (NSImage *) theImage
{
  [theImage retain];
  [image release];
  image = theImage;
}

@end
      
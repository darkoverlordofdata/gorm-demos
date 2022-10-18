#import <AppKit/AppKit.h>
#import "AppController.h"

@implementation AppController

- (id) init
{
  self = [super init];
  model = [[ImageModel alloc] init];
  return self;
}

- (void) dealloc
{
  [model release];
  [super dealloc];
}

- (void) loadImage: (id)sender
{
  NSOpenPanel *oPanel;
  int result;
  
  oPanel = [NSOpenPanel openPanel];
  [oPanel setAllowsMultipleSelection:YES];
  result = [oPanel runModalForDirectory: NSHomeDirectory()
		   file: nil
		   types: nil];
  
  if (result == NSOKButton)
    {
      NSEnumerator *filesToOpenEnumerator;
      NSString *theFilename;
      
      filesToOpenEnumerator = [[oPanel filenames] 
				objectEnumerator];
      theFilename = [filesToOpenEnumerator nextObject];
      
      if ( theFilename )
	{
	  NSImage *image;
	  
	  image = [[NSImage alloc] 
		    initWithContentsOfFile: theFilename];
	  
	  [model setImage: image];
	  [image release];
	  
	  [window setTitle: theFilename];
	  [imageView setImage: [model image]];  
	}
    }
}

@end


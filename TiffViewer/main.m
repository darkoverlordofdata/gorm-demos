#import <AppKit/AppKit.h>
#import "AppController.h"

/* Entry point of the application */
int main(int argc, const char *argv[], char *env[])
{
  AppController *controller;
  NSAutoreleasePool *pool;

  pool = [[NSAutoreleasePool alloc] init];
  controller = [[AppController alloc] init];

  [NSApplication sharedApplication];
  [NSApp setDelegate: controller];

  NSApplicationMain(argc, argv);

  [controller release];
  [pool release];

  return 0;
}

//
//  AppDelegate.m
//  Custom Window
//
//  Created by shouding on 9/24/15.
//  Copyright © 2015 shouding. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate
- (IBAction)alertHello:(id)sender {
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText: @"Hello, World"];
    [alert runModal];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [self.window setStyleMask: NSBorderlessWindowMask];
    [self.window setMovableByWindowBackground: YES];
    [self.window setMovable: YES];
    [self.window setOpaque: NO];
    [self.window setBackgroundColor: [NSColor clearColor]];
    [self.window setLevel: 1];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end

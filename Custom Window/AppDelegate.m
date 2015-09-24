//
//  AppDelegate.m
//  Custom Window
//
//  Created by shouding on 9/24/15.
//  Copyright © 2015 shouding. All rights reserved.
//

#import "AppDelegate.h"
#import "CCView.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet CCView *keyView;
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
    
    NSButton *btn = [NSWindow standardWindowButton: NSWindowCloseButton forStyleMask:[self.window styleMask]];
    [btn setAction:@selector(closeWindow:)];
    NSRect frame = [btn frame];
    [btn setFrame: NSMakeRect(5, [self.keyView frame].size.height - frame.size.height - 5 , frame.size.width, frame.size.height)];
    
    [self.keyView addSubview: btn];
    NSLog(@"%@", [btn cell]);
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void) closeWindow: (id) sender {
    [[sender window] close];
}

@end

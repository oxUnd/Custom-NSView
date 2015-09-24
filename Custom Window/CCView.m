//
//  CCView.m
//  Custom Window
//
//  Created by shouding on 9/24/15.
//  Copyright © 2015 shouding. All rights reserved.
//

#import "CCView.h"

@implementation CCView

- (void)drawRect:(NSRect)dirtyRect {
//    [super drawRect:dirtyRect];
    
//    NSLog(@"draw dirtyRect.");
    
    // Drawing code here.
    // If you plan to do more drawing later, it's a good idea
    // to save the graphics state before clipping.
    [NSGraphicsContext saveGraphicsState];
    
    long r = random();
    long g = random();
    long b = random();
    NSColor *color = [NSColor colorWithRed: (r * 1.0/(r + g + b)) green: (g * 1.0 / (r + g + b)) blue: (b * 1.0 / (r + g + b)) alpha: 1.0];
    [color set];
    
    NSBezierPath *path = [NSBezierPath bezierPath];
    int zeroOne = 0;
    float x, y;
    
    [path moveToPoint: NSMakePoint(0, dirtyRect.size.height)];
    for (int i = 0; i < (int) dirtyRect.size.width / 10; i++) {
        if (zeroOne == 1) {
            y = 0;
            zeroOne = 0;
        } else {
            zeroOne = 1;
            y = 10;
        }
        x = 10 * i;
        [path lineToPoint: NSMakePoint(x, y)];
    }
    
    [path lineToPoint:NSMakePoint(dirtyRect.size.width, (zeroOne == 0 ? 10 : 0))];
    [path lineToPoint:NSMakePoint(dirtyRect.size.width, dirtyRect.size.height)];
//    NSShadow * shadow = [[NSShadow alloc] init];
//    [shadow setShadowColor:[NSColor grayColor]];
//    [shadow setShadowBlurRadius:10.0];
//    [shadow set];
    [path fill];
    
    [NSGraphicsContext restoreGraphicsState];
}

@end

//
//  CamomileAppDelegate.h
//  Camomile
//
//  Created by Dimitrios Vlastaras on 9/3/11.
//  Copyright 2011 N/A. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CamomileAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

- (void) turnScreenOff;

@end

//
//  CamomileAppDelegate.m
//  Camomile
//
//  Created by Dimitrios Vlastaras on 9/3/11.
//  Copyright 2011 N/A. All rights reserved.
//

#import "CamomileAppDelegate.h"

@implementation CamomileAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self turnScreenOff];
    exit(1);
}

- (void) turnScreenOff {
    io_registry_entry_t r = IORegistryEntryFromPath(kIOMasterPortDefault, "IOService:/IOResources/IODisplayWrangler");
    if (r) {
        IORegistryEntrySetCFProperty(r, CFSTR("IORequestIdle"), kCFBooleanTrue);
        IOObjectRelease(r);
    }
}

@end

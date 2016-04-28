//
//  AppDelegate.m
//  GeoCode
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (nonatomic, weak) IBOutlet NSMenuItem *gitMenuItem;
@property (nonatomic, weak) IBOutlet NSMenuItem *webMenuItem;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.gitMenuItem.target = self;
    self.gitMenuItem.action = @selector(openGitLink);

    self.webMenuItem.target = self;
    self.webMenuItem.action = @selector(openWebLink);
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)openGitLink {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"https://github.com/stingclaw/geocode"]];
}
- (IBAction)openWebLink {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"https://chipthrasher.com/geocode"]];
}

@end

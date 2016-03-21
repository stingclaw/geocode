//
//  Document.m
//  GeoCode
//

#import "Document.h"
#import "ViewController.h"

@interface Document ()

@property (nonatomic, copy) NSString *contents;

@end

@implementation Document

- (instancetype)init {
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController {
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace {
    return YES;
}

+ (NSArray*)readableTypes {
    // Define document types that can be Opened
    return @[@"Document"];
}

+ (NSArray*)writeableTypes {
    // Define document types that can be Saved to
    return @[@"Document"];
}

- (void)makeWindowControllers {
    [self addWindowController:[[NSStoryboard storyboardWithName:@"Main" bundle:nil] instantiateControllerWithIdentifier:@"Document Window Controller"]];
    
    if (self.contents) {
        ViewController *vc = (ViewController*)[[self.windowControllers lastObject] contentViewController];
        vc.documentText = self.contents;
    }
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
    // Save Document
    
    ViewController *vc = (ViewController*)[self.windowControllers[0] contentViewController];
    return [vc.documentText dataUsingEncoding:NSUTF8StringEncoding];
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError {
    // Open Document
    
    self.contents = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return YES;
}

@end

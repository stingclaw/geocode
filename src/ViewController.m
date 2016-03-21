//
//  ViewController.m
//  GeoCode
//


#import "ViewController.h"

@interface ViewController ()

// Connect the Interface Builder TextView to a variable
@property (nonatomic, strong) IBOutlet NSTextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.textView setFont:[NSFont fontWithName:@"Menlo" size:14]];
    self.textView.textColor = [NSColor blackColor];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
    // Update the view, if already loaded.
}

- (NSString*)documentText {
    // Save the TextView's contents to the documentText NSString
    return self.textView.string;
}


- (void)setDocumentText:(NSString *)documentText {
    // Put the document's text into the TextView
    self.textView.string = documentText;
}

@end


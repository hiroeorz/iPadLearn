//
//  GN_ViewController.m
//  HelloWorld
//
//  Created by Hiroe Shin on 12/04/10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "GN_ViewController.h"

@interface GN_ViewController ()

@end

@implementation GN_ViewController

@synthesize myButton = _myButton;
@synthesize myLabel = _myLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myLabel.text = @"こんちわーーーーー";
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (IBAction)sayHello:(id)sender {
    
    self.myLabel.text = @"押されたよ！";
    NSLog(@"pusshed! %@", [NSString stringWithFormat:@"%@です", @"helo"]);
}

@end

//
//  GN_ViewController.m
//  DownloadSample
//
//  Created by Hiroe Shin on 12/05/10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "GN_ViewController.h"

#import "ImageDownloader.h"


@interface GN_ViewController ()

@end

@implementation GN_ViewController

@synthesize myImageView = _myImageView;

- (void)viewDidLoad
{
  [super viewDidLoad];
  NSLog(@"called viewDidload");
  ImageDownloader *loader = [[ImageDownloader alloc] init];
  loader.viewController = self;
  [loader getYahooImage];
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

@end

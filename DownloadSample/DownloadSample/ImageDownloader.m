//
//  ImageDownloader.m
//  DownloadSample
//
//  Created by Hiroe Shin on 12/05/10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ImageDownloader.h"

#import "GN_ViewController.h"


@implementation ImageDownloader

@synthesize viewController = _viewController;

- (void)getYahooImage {
  imageData = [NSMutableData data];
  
  NSString *urlString = @"http://k.yimg.jp/images/top/sp/logo.gif";
  NSURL *url = [NSURL URLWithString:urlString];
  NSURLRequest *request = [NSURLRequest requestWithURL:url];
  [NSURLConnection connectionWithRequest:request delegate:self];
  NSLog(@"starting download...");
}

#pragma mark -
#pragma NSOperation Delegate Methods

// データの一部を受け取ったら呼ばれる
- (void)connection:(NSURLConnection *)connection 
    didReceiveData:(NSData *)data {
  NSLog(@"received!!");
  [imageData appendData:data];
}

// 全てのデータを受信し終わったら呼ばれる
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
  NSLog(@"finished!!");
  UIImage *image = [UIImage imageWithData:imageData];
  [self.viewController.myImageView setImage:image];
}

// 通信に失敗したら呼ばれる
-(void)connection:(NSURLConnection*)connection 
 didFailWithError:(NSError*)error {

  NSLog(@"error: %@", error);
}

@end

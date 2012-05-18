//
//  ImageDownloader.h
//  DownloadSample
//
//  Created by Hiroe Shin on 12/05/10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GN_ViewController;

@interface ImageDownloader : NSOperation {
  
@private
  NSMutableData *imageData;
}

@property(nonatomic, unsafe_unretained) GN_ViewController *viewController;

- (void)getYahooImage;
  
@end

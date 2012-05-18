//
//  GN_ViewController.h
//  TableSample
//
//  Created by Hiroe Shin on 12/04/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GN_ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {

}

@property (nonatomic, strong) NSArray *namesArray;
@property (nonatomic, strong) NSArray *imagesArray;

@end

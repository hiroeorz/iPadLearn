//
//  GN_ViewController.h
//  HelloWorld
//
//  Created by Hiroe Shin on 12/04/10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GN_ViewController : UIViewController {
    
}

@property (nonatomic, strong) IBOutlet UIButton *myButton;
@property (nonatomic, strong) IBOutlet UILabel *myLabel;

- (IBAction)sayHello:(id)sender;

@end

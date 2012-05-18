//
//  GN_ViewController.m
//  TableSample
//
//  Created by Hiroe Shin on 12/04/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "GN_ViewController.h"

#import "GN_CustomCell.h"


@interface GN_ViewController (Local)
- (void)helloTable;
@end


@implementation GN_ViewController

@synthesize namesArray = _namesArray;
@synthesize imagesArray = _imagesArray;


- (void)helloTable {
 
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  self.namesArray = [NSArray arrayWithObjects:@"hiroe", @"matsumoto",
                     @"nagashima", @"ito", @"iwasaka", nil];
  self.imagesArray = [NSArray arrayWithObjects:@"104515481.gif", @"104515481.gif",
                      @"104515481.gif", @"104515481.gif", @"104515481.gif", nil];
}

- (void)viewDidUnload
{
  [super viewDidUnload];
  self.namesArray = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return YES;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.namesArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"SampleCell";
  GN_CustomCell *cell = (GN_CustomCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
/*    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                                         reuseIdentifier:CellIdentifier];
    }
*/
    
  if (cell == nil) {
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"GS_CustomCell"
                                                 owner:self options:nil];
    
    for (id oneObject in nib) {
      if ([oneObject isKindOfClass:[GN_CustomCell class]]) {
        cell = (GN_CustomCell *)oneObject;
      }
    }
  }

    
  NSLog(@"cell: %@", cell);
  
  NSString *name = [self.namesArray objectAtIndex:[indexPath row]];
  cell.myLabel.text = name;
  
  NSString *catImageName = [self.imagesArray objectAtIndex:[indexPath row]];
  cell.myImageView.image = [UIImage imageNamed:catImageName];
  return cell;
}

@end

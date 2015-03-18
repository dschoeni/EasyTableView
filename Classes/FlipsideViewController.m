//
//  FlipsideViewController.m
//  EasyTableView
//
//  Created by Aleksey Novicov on 1/30/12.
//  Copyright (c) 2012 Yodel Code LLC. All rights reserved.
//
// Demonstrates the use of EasyTableView with images loaded from a remote server

#import "FlipsideViewController.h"

@implementation FlipsideViewController

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
  
    NSMutableArray* imagePaths = [[NSMutableArray alloc] initWithArray:@[@"11_sonntag_012.jpg", @"11_sonntag_011.jpg", @"11_sonntag_010.jpg", @"11_sonntag_001.jpg", @"11_sonntag_002.jpg", @"11_sonntag_003.jpg",@"11_sonntag_004.jpg", @"11_sonntag_005.jpg", @"11_sonntag_006.jpg", @"11_sonntag_007.jpg", @"11_sonntag_008.jpg", @"11_sonntag_009.jpg"]];
    
    _imageScrollView = [[PAImageScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200) imagePaths:imagePaths viewWidth:200];
    
    [self.view addSubview:_imageScrollView];

}

- (void)viewDidUnload {
    [super viewDidUnload];
	self.imageScrollView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}



@end

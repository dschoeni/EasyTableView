//
//  FlipsideViewController.h
//  EasyTableView
//
//  Created by Aleksey Novicov on 1/30/12.
//  Copyright (c) 2012 Yodel Code LLC. All rights reserved.
//
// Demonstrates the use of EasyTableView with images loaded from a remote server

#import <UIKit/UIKit.h>
#import "PAImageScrollView.h"

@class FlipsideViewController;

@interface FlipsideViewController : UIViewController

@property (nonatomic) PAImageScrollView *imageScrollView;

@end

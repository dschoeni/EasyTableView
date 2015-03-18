//
//  PAImageScrollView.m
//  EasyTableView
//
//  Created by DevMachine on 19/03/15.
//
//

#import "PAImageScrollView.h"

#define IMAGEVIEW_TAG   101

@implementation PAImageScrollView

- (id) initWithFrame: (CGRect) frame imagePaths: (NSMutableArray*) imagePaths viewWidth: (int) width {
    self = [super initWithFrame:frame];
    [self initViewWithImagePaths:imagePaths viewWidth:width];
    return self;
}

- (void) initViewWithImagePaths: (NSMutableArray*) imagePaths viewWidth: (int) width {
    viewWidth = width;
    _imagePaths = imagePaths;
    
    CGRect frameRect	= CGRectMake(0, 44, self.bounds.size.width, self.bounds.size.height);
    EasyTableView *view	= [[EasyTableView alloc] initWithFrame:frameRect numberOfColumns:[_imagePaths count] ofWidth:viewWidth];
    self.easyTableView	= view;
    
    self.easyTableView.delegate						= self;
    self.easyTableView.snapAfterScroll              = TRUE; // To enable 'snapping' after scrolling has finished
    self.easyTableView.tableView.backgroundColor	= [UIColor blackColor];
    self.easyTableView.tableView.separatorColor		= [UIColor blackColor];
    self.easyTableView.cellBackgroundColor			= [UIColor blackColor];
    self.easyTableView.autoresizingMask				= UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth;
    
    [self addSubview:self.easyTableView];
}

#pragma mark - EasyTableViewDelegate

- (UIView *)easyTableView:(EasyTableView *)easyTableView viewForRect:(CGRect)rect {
    
    // Create a container view for an EasyTableView cell
    UIView *container = [[UIView alloc] initWithFrame:rect];
    [container setBackgroundColor:[UIColor redColor]];
    
    // Setup an image view to display an image
    UIImageView *imageView	= [[UIImageView alloc] initWithFrame:CGRectMake(1, 0, rect.size.width-2, rect.size.height)];
    imageView.tag			= IMAGEVIEW_TAG;
    imageView.contentMode	= UIViewContentModeScaleAspectFill;
    
    [container addSubview:imageView];
    
    return container;
}

// Second delegate populates the views with data from a data source

- (void)easyTableView:(EasyTableView *)easyTableView setDataForView:(UIView *)view forIndexPath:(NSIndexPath *)indexPath {
    
    // Set the image for the given index
    UIImageView *imageView = (UIImageView *)[view viewWithTag:IMAGEVIEW_TAG];
    imageView.image = [UIImage imageNamed:[_imagePaths objectAtIndex:indexPath.row]];
    
}

- (void)easyTableView:(EasyTableView *)easyTableView stoppedAtIndex:(NSInteger)index {
    NSLog(@"Stopped at Index %ld", (long) index);
}

@end

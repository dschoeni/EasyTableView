//
//  PAImageScrollView.h
//  EasyTableView
//
//  Created by DevMachine on 19/03/15.
//
//

#import "EasyTableView.h"

@interface PAImageScrollView : UIView <EasyTableViewDelegate> {
    int viewWidth;
}

@property (nonatomic, retain) NSMutableArray* imagePaths;
@property (nonatomic) EasyTableView *easyTableView;

- (id) initWithFrame: (CGRect) frame imagePaths: (NSMutableArray*) imagePaths viewWidth: (int) width;
- (void) initViewWithImagePaths: (NSMutableArray*) imagePaths viewWidth: (int) width;

@end

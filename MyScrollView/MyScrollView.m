//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Tyson Parks on 2/26/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

-(void)handlePanGesture:(UIPanGestureRecognizer *) gestureRecognizer;

@end

@implementation MyScrollView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super initWithCoder:aDecoder];
    if ( self ){
        [self setupPanViewGestureRecognizer];
        self.frame = CGRectMake(self.bounds.origin.x,
                                 self.bounds.origin.y,
                                 self.bounds.size.width,
                                 self.bounds.size.height + 600);
    }
    return self;
}

-(void)setupPanViewGestureRecognizer {
    self.panGestureReconizer = [[UIPanGestureRecognizer alloc] init];
    self.panGestureReconizer.minimumNumberOfTouches = 1;
    self.panGestureReconizer.maximumNumberOfTouches = 1;
    [self addGestureRecognizer:self.panGestureReconizer];
    
    [self.panGestureReconizer addTarget:self action:@selector(handlePanGesture:)];
}



-(void)handlePanGesture:(UIPanGestureRecognizer *) gestureRecognizer
{
    // Get pan translation
    self.panTranslationPoint = [gestureRecognizer translationInView:self];
    // 
    [self.panGestureReconizer setTranslation:CGPointZero inView:self];
    
    CGFloat constrainedYTranslation = (self.bounds.origin.y - self.panTranslationPoint.y);
    
    if (constrainedYTranslation > 600.0) {
        constrainedYTranslation = 600.0;
    } else if (constrainedYTranslation < 0.0) {
        constrainedYTranslation = 0.0;
    } else {
        constrainedYTranslation = constrainedYTranslation;
    }
    
        self.bounds =
        CGRectMake(self.bounds.origin.x,
                   constrainedYTranslation,
                   self.bounds.size.width,
                   self.bounds.size.height);
}






/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

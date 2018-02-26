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



-(void)handlePanGesture:(UIPanGestureRecognizer *) gestureRecognizer {
    self.panTranslationPoint = [gestureRecognizer translationInView:self];
    
}






/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

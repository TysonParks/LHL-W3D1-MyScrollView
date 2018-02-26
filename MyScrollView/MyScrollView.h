//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Tyson Parks on 2/26/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;

@property (strong, nonatomic) UIPanGestureRecognizer *panGestureReconizer;

@end

//
//  ViewController.m
//  MyScrollView
//
//  Created by Tyson Parks on 2/26/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MyScrollView *mainView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
  
    
//    self.mainView.bounds =
//    CGRectMake(self.mainView.bounds.origin.x,
//               (self.mainView.bounds.origin.y + (self.myScrollView.panTranslationPoint.y)),
//               self.mainView.bounds.size.width,
//               self.mainView.bounds.size.height);
}



@end

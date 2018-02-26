//
//  ViewController.m
//  MyScrollView
//
//  Created by Tyson Parks on 2/26/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *mainView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
  
    
    self.mainView.bounds = CGRectMake(
                                      self.mainView.bounds.origin.x,
                                      (self.mainView.bounds.origin.y + 100.0),
                                      self.mainView.bounds.size.width,
                                      self.mainView.bounds.size.height);
    
}

@end

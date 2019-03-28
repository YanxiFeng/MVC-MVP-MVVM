//
//  ViewController.m
//  MVP-Demo
//
//  Created by Yvan Feng on 2019/3/21.
//  Copyright © 2019 Yvan Feng. All rights reserved.
//

#import "ViewController.h"
#import "Presenter.h"

@interface ViewController ()

@property (strong, nonatomic) Presenter *presenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.presenter = [[Presenter alloc] initWithController:self];
}


@end

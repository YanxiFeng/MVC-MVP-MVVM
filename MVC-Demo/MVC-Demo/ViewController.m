//
//  ViewController.m
//  MVC-Demo
//
//  Created by Yvan Feng on 2019/3/21.
//  Copyright © 2019 Yvan Feng. All rights reserved.
//

#import "ViewController.h"
#import "NewModel.h"
#import "NewView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NewModel *model = [[NewModel alloc] init];
    model.title = @"语文";
    model.content = @"唐诗三百首。。。";
    
    NewView *view = [[NewView alloc] init];
    view.frame = CGRectMake(0, 0, 300, 400);
    [self.view addSubview:view];
    
    view.titleLbl.text = model.title;
    view.contentLbl.text = model.content;
}


@end

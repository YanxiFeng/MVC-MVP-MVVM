//
//  ViewModel.m
//  MVVM-Demo
//
//  Created by Yvan Feng on 2019/3/21.
//  Copyright © 2019 Yvan Feng. All rights reserved.
//

#import "ViewModel.h"
#import "NewModel.h"
#import "NewView.h"

@interface ViewModel ()

@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *content;

@end

@implementation ViewModel

- (instancetype)initWithController:(UIViewController *)controller
{
    self = [super init];
    if (self) {
        
        NewView *view = [[NewView alloc] init];
        view.frame = CGRectMake(0, 0, 300, 400);
        view.viewModel = self;
        [controller.view addSubview:view];
        
        NewModel *model = [[NewModel alloc] init];
        model.title = @"语文";
        model.content = @"唐诗三百首。。。";
        
        self.title = model.title;
        self.content = model.content;
    }
    return self;
}

@end

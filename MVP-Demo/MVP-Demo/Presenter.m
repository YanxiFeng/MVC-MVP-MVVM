//
//  Presenter.m
//  MVP-Demo
//
//  Created by Yvan Feng on 2019/3/21.
//  Copyright © 2019 Yvan Feng. All rights reserved.
//

#import "Presenter.h"
#import "NewView.h"
#import "NewModel.h"

@implementation Presenter

- (instancetype)initWithController:(UIViewController *)controller
{
    self = [super init];
    if (self) {
        NewModel *model = [[NewModel alloc] init];
        model.title = @"语文";
        model.content = @"唐诗三百首。。。";
        
        NewView *view = [[NewView alloc] init];
        view.frame = CGRectMake(0, 0, 300, 400);
        [controller.view addSubview:view];
        
        view.titleLbl.text = model.title;
        view.contentLbl.text = model.content;
    }
    return self;
}

@end

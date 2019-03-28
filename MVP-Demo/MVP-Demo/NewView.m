//
//  NewView.m
//  MVP-Demo
//
//  Created by Yvan Feng on 2019/3/21.
//  Copyright © 2019 Yvan Feng. All rights reserved.
//

#import "NewView.h"

@implementation NewView

- (instancetype)init
{
    self = [super init];
    if (self) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.frame = CGRectMake(100, 100, 200, 40);
        [self addSubview:_titleLbl];
        
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.frame = CGRectMake(100, 200, 200, 40);
        [self addSubview:_contentLbl];
    }
    return self;
}

@end

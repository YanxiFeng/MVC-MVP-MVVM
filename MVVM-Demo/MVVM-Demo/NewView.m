//
//  NewView.m
//  MVP-Demo
//
//  Created by Yvan Feng on 2019/3/21.
//  Copyright © 2019 Yvan Feng. All rights reserved.
//

#import "NewView.h"
#import "NSObject+FBKVOController.h"

@interface NewView ()

@property (strong, nonatomic, readonly) UILabel *titleLbl;
@property (strong, nonatomic, readonly) UILabel *contentLbl;

@end

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

- (void)setViewModel:(ViewModel *)viewModel
{
    _viewModel = viewModel;
    
    __weak typeof(self) weakSelf = self;
    
    [self.KVOController observe:viewModel keyPath:@"title" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        weakSelf.titleLbl.text = change[NSKeyValueChangeNewKey];
    }];
    [self.KVOController observe:viewModel keyPath:@"content" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        weakSelf.contentLbl.text = change[NSKeyValueChangeNewKey];
    }];
}

@end

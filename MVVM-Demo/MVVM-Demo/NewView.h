//
//  NewView.h
//  MVP-Demo
//
//  Created by Yvan Feng on 2019/3/21.
//  Copyright © 2019 Yvan Feng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewModel;

NS_ASSUME_NONNULL_BEGIN

@interface NewView : UIView

@property (strong, nonatomic) ViewModel *viewModel;

@end

NS_ASSUME_NONNULL_END

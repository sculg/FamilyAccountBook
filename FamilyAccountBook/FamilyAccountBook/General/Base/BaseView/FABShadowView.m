//
//  FABshadowContainerView.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "FABShadowView.h"

@interface FABShadowView ()

@property (nonatomic, strong) UIView *shadowContainerView;

@property (nonatomic, strong) UIView *borderView;

@end

@implementation FABShadowView

#pragma mark - Initialize Methods

- (instancetype)initWithFrame:(CGRect)frame  {
 	self = [super initWithFrame:frame];
    if (self) {
		self.backgroundColor = [UIColor whiteColor];
        [self setupSubViews];
        [self setupConstraints];
    }
    return self;
}

#pragma mark - Super Methods
#pragma mark - Private Methods

- (void)setupSubViews { 
    [self addSubview:self.shadowContainerView];
    [self.shadowContainerView addSubview:self.borderView];
}

- (void)setupConstraints { 
    [self.shadowContainerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.bottom.equalTo(self);
    }];
    
    [self.borderView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.bottom.equalTo(self.shadowContainerView);
    }];
}

#pragma mark - Public Methods
#pragma mark - Event
#pragma mark - <<#Delegate#>>
#pragma mark - Property

- (UIView *)shadowContainerView {
    if (!_shadowContainerView) {
        _shadowContainerView = [[UIView alloc] init];
        _shadowContainerView.layer.shadowColor = [UIColor grayColor].CGColor;
        _shadowContainerView.layer.shadowOpacity = 0.2;
        _shadowContainerView.layer.shadowRadius = 3.0;
        _shadowContainerView.layer.shadowOffset = CGSizeMake(1, 1);
        _shadowContainerView.clipsToBounds = NO;
    }
    return _shadowContainerView;
}

- (UIView *)borderView {
    if (!_borderView) {
        _borderView = [[UIView alloc] init];
        _borderView.backgroundColor = [UIColor whiteColor];
        _borderView.layer.masksToBounds = YES;
        _borderView.layer.cornerRadius = 3.0;
    }
    return _borderView;
}


@end

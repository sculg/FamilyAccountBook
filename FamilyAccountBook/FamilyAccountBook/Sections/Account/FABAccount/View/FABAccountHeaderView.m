//
//  FABAccountHeaderView.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "FABAccountHeaderView.h"
#import "FABShadowView.h"
#import "FABAccountHeaderBlockView.h"

@interface FABAccountHeaderView ()

/** viewModel */
@property (nonatomic, strong) FABAccountHeaderViewVM *viewModel;
/** 阴影背景 */
@property (nonatomic, strong) FABShadowView *shadowView;
/** 收入模块 */
@property (nonatomic, strong) FABAccountHeaderBlockView *incomeBlockView;
/** 支出模块 */
@property (nonatomic, strong) FABAccountHeaderBlockView *expenditureBlockView;
/** 结余模块 */
@property (nonatomic, strong) FABAccountHeaderBlockView *cashSurplusBlockView;

@end

@implementation FABAccountHeaderView

#pragma mark - Initialize Methods

- (instancetype)initWithFrame:(CGRect)frame  viewModel:(FABAccountHeaderViewVM  *)viewModel  {
 	
 	self = [super initWithFrame:frame];
    if (self) {
    	_viewModel =  viewModel;
		self.backgroundColor = [UIColor whiteColor];
        [self setupSubViews];
        [self setupConstraints];

    }
    return self;
}

#pragma mark - Super Methods
#pragma mark - Private Methods

- (void)setupSubViews { 
    [self addSubview:self.shadowView];
    [self.shadowView addSubview:self.incomeBlockView];
    [self.shadowView addSubview:self.expenditureBlockView];
    [self.shadowView addSubview:self.cashSurplusBlockView];
}

- (void)setupConstraints {
    
    [self.shadowView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(10);
        make.bottom.equalTo(self.mas_bottom).offset(-10);
        make.left.equalTo(self.mas_left).offset(20);
        make.right.equalTo(self.mas_right).offset(-20);
    }];
    
    CGFloat blockViewWidth = (kScreenWidth - 40)/3;
    [self.incomeBlockView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.shadowView);
         make.bottom.equalTo(self.shadowView).mas_offset(-2);
        make.left.equalTo(self.shadowView);
        make.width.equalTo(@(blockViewWidth));
    }];
    
    [self.expenditureBlockView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.shadowView);
        make.bottom.equalTo(self.incomeBlockView);
        make.left.equalTo(self.incomeBlockView.mas_right);
        make.width.equalTo(@(blockViewWidth));
    }];
    
    [self.cashSurplusBlockView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.shadowView);
        make.bottom.equalTo(self.incomeBlockView);
        make.left.equalTo(self.expenditureBlockView.mas_right);
        make.width.equalTo(@(blockViewWidth));
    }];
}

#pragma mark - Public Methods
#pragma mark - Event
#pragma mark - <<#Delegate#>>
#pragma mark - Property

- (FABShadowView *)shadowView {
    if (!_shadowView) {
        _shadowView = [[FABShadowView alloc] initWithFrame:CGRectZero];
    }
    return _shadowView;
}

- (FABAccountHeaderBlockView *)incomeBlockView {
    if (!_incomeBlockView) {
        _incomeBlockView = [[FABAccountHeaderBlockView alloc] initWithFrame:CGRectZero viewModel:self.viewModel.incomeBlockViewVM];
    }
    return _incomeBlockView;
}

- (FABAccountHeaderBlockView *)expenditureBlockView {
    if (!_expenditureBlockView) {
        _expenditureBlockView = [[FABAccountHeaderBlockView alloc] initWithFrame:CGRectZero viewModel:self.viewModel.expenditureBlockViewVM];
    }
    return _expenditureBlockView;
}

- (FABAccountHeaderBlockView *)cashSurplusBlockView {
    if (!_cashSurplusBlockView) {
        _cashSurplusBlockView = [[FABAccountHeaderBlockView alloc] initWithFrame:CGRectZero viewModel:self.viewModel.cashSurplusBlockViewVM];
    }
    return _cashSurplusBlockView;
}

- (FABAccountHeaderViewVM *)viewModel {
    if (!_viewModel) {
        _viewModel = [[FABAccountHeaderViewVM alloc] init];
    }
    return _viewModel;
}

@end

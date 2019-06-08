//
//  FABAccountHeaderBlockView.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "FABAccountHeaderBlockView.h"

@interface FABAccountHeaderBlockView ()

/**title,eg 总支出，总收入，总结余  */
@property  (nonatomic, strong) UILabel *titleLabel;
/** 数值 */
@property (nonatomic, strong) UILabel *valueLabel;

/** viewModel */
@property (nonatomic, strong) FABAccountHeaderBlockViewVM *viewModel;

@end

@implementation FABAccountHeaderBlockView

#pragma mark - Initialize Methods

- (instancetype)initWithFrame:(CGRect)frame  viewModel:(FABAccountHeaderBlockViewVM  *)viewModel  {
 	
 	self = [super initWithFrame:frame];
    if (self) {

    	_viewModel =  viewModel;
		self.backgroundColor = [UIColor whiteColor];
        [self setupSubViews];
        [self setupConstraints];
        [self setupData];

    }
    return self;
}

#pragma mark - Super Methods
#pragma mark - Private Methods

- (void)setupSubViews { 
    [self addSubview:self.titleLabel];
     [self addSubview:self.valueLabel];
}

- (void)setupConstraints {
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(15);
        make.centerX.equalTo(self);
        make.width.equalTo(self);
        make.height.equalTo(@(30));
    }];
    
    [self.valueLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom).offset(-15);
        make.centerX.equalTo(self);
        make.width.equalTo(self);
         make.height.equalTo(@(30));
    }];
    
}

- (void)setupData {
    self.titleLabel.text = self.viewModel.titleStr;
    self.valueLabel.text = self.viewModel.valueStr;
}
#pragma mark - Public Methods
#pragma mark - Event
#pragma mark - <<#Delegate#>>
#pragma mark - Property

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.font = kFontSize(13);
        _titleLabel.textColor = kBarTitleTextColor;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}

- (UILabel *)valueLabel {
    if (!_valueLabel) {
        _valueLabel = [[UILabel alloc] init];
        _valueLabel.backgroundColor = [UIColor clearColor];
        _valueLabel.font = kBoldFontSize(15);
        _valueLabel.textColor = kMainCommonColor;
        _valueLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _valueLabel;
}

@end

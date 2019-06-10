//
//  RYButtonCell.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/10.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "RYButtonCell.h"
#import "Masonry.h"

@interface RYButtonCell ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation RYButtonCell

#pragma mark - Initialize Methods

- (instancetype)initWithCellIdentifier:(NSString *)cellId {
    self = [super init];
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
    [self addSubview:self.button];
}

- (void)setupConstraints {
    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(6);
        make.left.equalTo(self).offset(20);
        make.right.equalTo(self).offset(-8);
        make.bottom.equalTo(self).offset(-20);
    }];
}

#pragma mark - Public Method
-(void)configButtonWithTitle:(NSString *)title
                  titleColor:(UIColor *)titleColor
                     bgColor:(UIColor *)bgColor
                   topOffset:(CGFloat)topOffset {
     [self.button setBackgroundImage:[UIImage imageWithColor:bgColor] forState:UIControlStateNormal];
     [self.button setTitleColor:titleColor forState:UIControlStateNormal];
     [self.button setTitle:title forState:UIControlStateNormal];
    [self.button mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(topOffset);
        make.left.equalTo(self).offset(20);
        make.right.equalTo(self).offset(-20);
        make.bottom.equalTo(self).offset(-6);
    }];
}
#pragma mark - Event
#pragma mark - <<#Delegate#>>
#pragma mark - Property

- (UIButton *)button{
    if (!_button) {
        _button = [[UIButton alloc] init];
        _button.layer.cornerRadius = 5.0f;
        _button.layer.masksToBounds = YES;
        _button.titleLabel.textAlignment = NSTextAlignmentCenter;
        _button.titleEdgeInsets = UIEdgeInsetsMake(0.0f, 2.0f, 0.0f, 2.0f);
        [_button setBackgroundImage:[UIImage imageWithColor:kButtonDisableColor] forState:UIControlStateDisabled];
        [_button setTitleColor:kWhiteColor forState:UIControlStateDisabled];
    }
    return _button;
}

@end

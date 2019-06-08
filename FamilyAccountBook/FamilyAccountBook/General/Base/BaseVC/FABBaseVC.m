//
//  FABBaseVC.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "FABBaseVC.h"

//System
//VC
//VM
//View

//Helper

@interface FABBaseVC ()


@end

@implementation FABBaseVC

#pragma mark - Initialize Methods

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.navigationController.navigationBar navBarBackGroundColor:[UIColor whiteColor] image:nil isOpaque:YES];//颜色
    [self.navigationController.navigationBar navBarAlpha:0 isOpaque:YES];//透明度
    [self.navigationController.navigationBar navBarBottomLineHidden:YES];//隐藏底线
    
    [self setupSubViews];
    [self setupConstraints];
    [self setupEvent];
}

#pragma mark - Super Methods
#pragma mark - Private Methods

- (void)setupSubViews {
    
}

- (void)setupConstraints {

}

#pragma mark - Event

- (void)setupEvent {
	
}
#pragma mark - Public Methods

#pragma mark - <<#Delegate#>>

#pragma mark - Property

@end

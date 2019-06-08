//
//  FABNavigationController.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "FABNavigationController.h"

//System
//VC
//VM
//View

//Helper

@interface FABNavigationController ()


@end

@implementation FABNavigationController

#pragma mark - Initialize Methods

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:kBarTitleTextColor,
                                               NSFontAttributeName:[UIFont systemFontOfSize:19.0f]};
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

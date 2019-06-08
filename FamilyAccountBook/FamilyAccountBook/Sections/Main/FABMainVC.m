//
//  FABMainVC.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "FABMainVC.h"


//System
//VC
#import "FABNavigationController.h"
#import "FABMyVC.h"
#import "FABReportFormVC.h"
#import "FABAccountVC.h"
//VM
//View

//Helper

@interface FABMainVC ()<UITabBarControllerDelegate>

@end

@implementation FABMainVC

#pragma mark - Initialize Methods

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self setupSubViews];
    [self setupEvent];
}

#pragma mark - Super Methods
#pragma mark - Private Methods

- (void)setupSubViews {
    
    /** 记账首页 */
    FABAccountVC *accountVC = [[FABAccountVC alloc] init];
    FABNavigationController *accountNavigationController = [self.class viewController:accountVC
                                                                                   title:NSLocalizedString(@"Account",nil)
                                                                         normalImageName:@"tabbar_item_accounting_normal"
                                                                       selectedImageName:@"tabbar_item_accounting_selected"];
    
    /** 账目报表 */
    FABReportFormVC *reportFormVC = [[FABReportFormVC alloc] init];
    FABNavigationController *reportFormNavigationController = [self.class viewController:reportFormVC
                                                                                   title:NSLocalizedString(@"Report",nil)
                                                                         normalImageName:@"tabbar_item_reportform_normal"
                                                                       selectedImageName:@"tabbar_item_reportform_selected"];
    
    /** 我的 */
    FABMyVC *myVC = [[FABMyVC alloc] init];
    FABNavigationController *myNavigationController = [self.class viewController:myVC
                                                                                  title:NSLocalizedString(@"Me",nil)
                                                                        normalImageName:@"tabbar_item_mysetting_normal"
                                                                      selectedImageName:@"tabbar_item_mysetting_selected"];
    
    
    self.viewControllers = @[accountNavigationController, reportFormNavigationController,myNavigationController];
}

+ (FABNavigationController *)viewController:(UIViewController *)viewController
                                      title:(NSString *)title
                            normalImageName:(NSString *)normalImageName
                          selectedImageName:(NSString *)selectedImageName
{
    FABNavigationController *navigationController = [[FABNavigationController alloc] initWithRootViewController:viewController];
    navigationController.tabBarItem.title = title;
    [navigationController.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -2)];
    navigationController.tabBarItem.image = [[UIImage imageNamed:normalImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navigationController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [navigationController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: kTabbarGrayColor}
                                  forState:UIControlStateNormal];
    [navigationController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: kMainCommonColor}
                                  forState:UIControlStateSelected];
    navigationController.tabBarItem.imageInsets = UIEdgeInsetsMake(2.0f, 0.0f, -2.0f, 0.0f);
    return navigationController;
}

#pragma mark - Event

- (void)setupEvent {
	
}
#pragma mark - Public Methods

#pragma mark - <<#Delegate#>>

#pragma mark - Property

@end

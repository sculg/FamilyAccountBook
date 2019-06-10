//
//  FABAccountVC.m
//  FamilyAccountBook
//
//  Created by lg on 2019/6/8.
//  Copyright © 2019 sculg. All rights reserved.
//

#import "FABAccountVC.h"

//System
//VC
//VM
//View
#import "FABAccountHeaderView.h"
#import "RYButtonCell.h"
//Helper

@interface FABAccountVC ()<UITableViewDelegate,UITableViewDataSource>

/** tableView */
@property (nonatomic, strong) UITableView *tableView;
/** HeaderView */
@property (nonatomic, strong) FABAccountHeaderView *headerView;

@end

@implementation FABAccountVC

#pragma mark - Initialize Methods

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"记账";
    [self setupSubViews];
    [self setupConstraints];
    [self setupEvent];
}

#pragma mark - Super Methods
#pragma mark - Private Methods

- (void)setupSubViews {
    [self.view addSubview:self.tableView];
    self.tableView.tableHeaderView = self.headerView;
}

- (void)setupConstraints {

}

#pragma mark - Event

- (void)setupEvent {
	
}
#pragma mark - Public Methods

#pragma mark - <<#Delegate#>>
#pragma mark - <UITableViewDataSource>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RYButtonCell *cell = [RYButtonCell cellForTableView:tableView];
    [cell configButtonWithTitle:@"我要记账" titleColor:kWhiteColor bgColor:kMainCommonColor topOffset:10];
    return cell;
}

#pragma mark - <UITableViewDelegate>

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}

#pragma mark - Property
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}

- (FABAccountHeaderView *)headerView {
    if (!_headerView) {
        _headerView = [[FABAccountHeaderView alloc] initWithFrame:CGRectMake(0, 94, kScreenWidth, 180) viewModel:nil];
    }
    return _headerView;
}

@end

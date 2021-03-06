//
//  LeftMenuViewController.h
//  LaoLuoYuLu
//
//  Created by 老岳 on 14-3-7.
//  Copyright (c) 2014年 LYue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableHeadView.h"
#import "TableFootView.h"

@interface LeftMenuViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *menuListArr;

@property (nonatomic, strong) TableHeadView *tableHeadView;
@property (nonatomic, strong) TableFootView *tableFootView;

@end

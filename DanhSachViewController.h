//
//  DanhSachViewController.h
//  NavTableBasic
//
//  Created by Hai Nguyen on 6/14/12.
//  Copyright (c) 2012 BlogXcode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DanhSachViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    IBOutlet UITableView *teamsTable;
    NSArray *teamList;
}

@end

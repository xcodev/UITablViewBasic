//
//  GiaiDauViewController.m
//  NavTableBasic
//
//  Created by Hai Nguyen on 6/14/12.
//  Copyright (c) 2012 BlogXcode. All rights reserved.
//

#import "GiaiDauViewController.h"
#import "DanhSachViewController.h"

@interface GiaiDauViewController ()

@end

@implementation GiaiDauViewController

- (void)dealloc{
    [marchListTable release];
    [list release];
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    list = [[NSArray alloc] initWithObjects:@"Ngoại hạng Anh",@"La Liga",@"FA Cup",@"V-League",@"Ngoại hạng Lào", nil];
    marchListTable.delegate = self;
    marchListTable.dataSource = self;
    [marchListTable reloadData];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark -
#pragma mark UITableViewDelegate Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    // số lượng section trên table
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //số lượng row trong 1 section
    return [list count];
}

- (float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //chiều cao của 1 row thứ indexPath
    return 44.0f;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"CellId";
    UITableViewCell *cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId] autorelease];
    }
    cell.textLabel.text = [list objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DanhSachViewController *danhsachController = [[[DanhSachViewController alloc] initWithNibName:@"DanhSachViewController" bundle:[NSBundle mainBundle]] autorelease];
    NSString *titleString = [list objectAtIndex:indexPath.row];
    danhsachController.title = titleString;
    [self.navigationController pushViewController:danhsachController animated:YES];
}

@end

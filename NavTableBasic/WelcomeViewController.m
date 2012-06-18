//
//  WelcomeViewController.m
//  NavTableBasic
//
//  Created by Hai Nguyen on 6/14/12.
//  Copyright (c) 2012 BlogXcode. All rights reserved.
//

#import "WelcomeViewController.h"
#import "GiaiDauViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (void)dealloc{
    [welcomeLabel release];
    [inputTextField release];
    [xcodeImageView release];
    [logoImageView release];
    [resetButton release];
    [enterButton release];
    [super dealloc];
}
- (IBAction)enterButtonPressed:(id)sender{
    if ([[inputTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] != 0) {
        GiaiDauViewController *giaidauController = [[[GiaiDauViewController alloc] initWithNibName:@"GiaiDauViewController" bundle:[NSBundle mainBundle]] autorelease];
        giaidauController.title = [NSString stringWithFormat:@"Xin chào, %@",inputTextField.text];
        [self.navigationController pushViewController:giaidauController animated:YES];
    }else {
        UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your name" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil] autorelease];
        [alert show];
    }
}

- (IBAction)resetButtonPress:(id)sender{
    [inputTextField resignFirstResponder];
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
    self.title = @"Welcome";
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
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

@end

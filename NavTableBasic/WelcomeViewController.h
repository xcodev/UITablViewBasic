//
//  WelcomeViewController.h
//  NavTableBasic
//
//  Created by Hai Nguyen on 6/14/12.
//  Copyright (c) 2012 BlogXcode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WelcomeViewController : UIViewController{
    IBOutlet UILabel *welcomeLabel;
    IBOutlet UIButton *enterButton;
    IBOutlet UITextField *inputTextField;
    IBOutlet UIButton *resetButton;
    IBOutlet UIImageView *xcodeImageView;
    IBOutlet UIImageView *logoImageView;
}

- (IBAction)enterButtonPressed:(id)sender;
- (IBAction)resetButtonPress:(id)sender;

@end

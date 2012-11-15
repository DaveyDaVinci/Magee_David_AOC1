//
//  ViewController.h
//  week4Project
//
//  Created by David Magee on 11/14/12.
//  Copyright (c) 2012 David Magee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //Calls to the header so they can be used outside of the function
    UILabel *usernameLabel;
    UITextField *usernameText;
    UIButton *submitButton;
    UILabel *displayedName;
    UIButton *dateButton;
    UIButton *infoButton;
    UILabel *infoLabel;
    NSString *name;
    NSString *successfulLogin;
    NSDateFormatter *dateToFormat;
    NSString *theDate;
    UIAlertView *dateAlert;
    
}

@end

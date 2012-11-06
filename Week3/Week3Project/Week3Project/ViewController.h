//
//  ViewController.h
//  Week3Project
//
//  Created by David Magee on 11/6/12.
//  Copyright (c) 2012 David Magee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{

}

//Declares the add function
- (int)Add: (int)one Add2: (int)two;

//Declares the Compare function
- (BOOL)Compare: (NSInteger)one Compare2: (NSInteger)two;

//Declares the Append function
- (NSString*)Append: (NSString*)one Append2: (NSString*)two;

//Declares the alert function
- (void)DisplayAlertWithString: (NSString*)string;


@end

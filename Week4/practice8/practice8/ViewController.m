//
//  ViewController.m
//  practice8
//
//  Created by David Magee on 11/13/12.
//  Copyright (c) 2012 David Magee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    userText = [[UITextField alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 30.0f)];
    if (userText != nil)
    {
        userText.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:userText];
    }
    
    UIButton *userButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (userButton != nil)
    {
        userButton.frame = CGRectMake(10.0f, 50.0f, 50.0f, 30.0f);
        [userButton setTitle:@"Okay" forState:UIControlStateNormal];
        [userButton addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:userButton];
    }
    
    
    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 90.0f, 320.0f, 20.0f)];
    if (textLabel != nil)
    {
        textLabel.text = @"", textInField;
        
    }
    [self.view addSubview:textLabel];

        
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)onClick
{
    textInField = [userText text];
    NSLog(@"%@", textInField);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

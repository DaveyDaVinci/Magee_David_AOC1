//
//  ViewController.m
//  practice62
//
//  Created by David Magee on 11/6/12.
//  Copyright (c) 2012 David Magee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    int integer = [self noParam];
    int returnValue = [self Add:integer Add2:6];
    NSLog(@"%d", returnValue);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (int)noParam
{
    return 5;
}

- (int)Add: (int)five Add2: (int)six
{
    return five + six;
}

@end

//
//  ViewController.m
//  Week3Project
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
    //Calls the add function, sets parameters.
    int addFunction = [self Add:3 Add2:6];
    
   
    //Takes the sum of the add function and puts it in an nsnumber
    NSNumber *sum = [[NSNumber alloc] initWithInt:addFunction];
    
    //Check for nil
    if (sum != nil)
    {
        
        //Converts the number to a string
        NSString *sumStr = [sum stringValue];
        NSString *numberString = [NSString stringWithFormat:@"The number is %@", sumStr];
        //Check
        if (sumStr != nil)
        {
            //Displays alert with total
            [self DisplayAlertWithString:numberString];
        }
    }
    
    
   
    
    //Calls the Compare function, sets parameters.
    int Bool1 = 3;
    int Bool2 = 3;
    BOOL compareFunction = [self Compare:Bool1 Compare2:Bool2];
    
    //Converts information into a string, using an or check for the return value and the integers above
    NSString *boolString = [NSString stringWithFormat:@"%@, it's true that %d and %d are equal", compareFunction? @"YES":@"NO", Bool1, Bool2];
    if (compareFunction)
    {
        [self DisplayAlertWithString:boolString];
    }
    
    //Calls the Append function, sets parameters
    NSString *stringOne = @"Hi there, I'm ";
    NSString *stringTwo = @"David";
    NSString *finalString = [self Append:stringOne Append2:stringTwo];
    
    [self DisplayAlertWithString:finalString];
    
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Add function, adds two integers togeter, returns the value
- (int)Add: (int)one Add2: (int)two
{
    return one + two;
}

//BOOL function, compares two parameters, returns YES if =
- (BOOL)Compare: (NSInteger)one Compare2: (NSInteger)two
{
    if (one == two)
    {
        return YES;
    } else
    {
        return NO;
    }
}

//NSString function.  Taking two strings and appending them using the append method.
- (NSString*)Append: (NSString*)one Append2: (NSString*)two
{
    NSMutableString *origStr = [[NSMutableString alloc] initWithString:one];
    NSString *appendedStr = [origStr stringByAppendingString:two];
    return appendedStr;
}


//Alert function taht adds strings to the alert.  
- (void)DisplayAlertWithString: (NSString*)string
{
    //This is setting up the alert view, with the parameters I tell it to
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:string delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
    if (alert != nil)
    {
        [alert show];
    }
}

//Alert View function. Allocates the alert view, then appends the string to it

@end

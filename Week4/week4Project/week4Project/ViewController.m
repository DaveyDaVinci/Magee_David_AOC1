//
//  ViewController.m
//  week4Project
//
//  Created by David Magee on 11/14/12.
//  Copyright (c) 2012 David Magee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //This is the label for the username text field. Inits with the frame
    usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 20.0f, 90.0f, 30.0f)];
    if (usernameLabel != nil)
    {
        //sets the text to username and adds it to the view
        usernameLabel.text = @"Username:";
        [self.view addSubview:usernameLabel];
    }
    
    
    //This is the text field for the username input. Inits with a frame
    usernameText = [[UITextField alloc] initWithFrame:CGRectMake(120.0f, 20.0f, 170.0f, 30.0f)];
    if (usernameText != nil)
    {
        //Sets the style for the text field and adds it to the view
        usernameText.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:usernameText];
    }
    
    
    //Submit button creation.  Allocs with the buttonWithType method
    submitButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (submitButton != nil)
    {
        //Sets the frame for the button
        submitButton.frame = CGRectMake(200.0f, 60.0f, 90.0f, 30.0f);
        //Sets the title and the state for the button
        [submitButton setTitle:@"Submit" forState:UIControlStateNormal];
        //Sets a tag for the switch case
        submitButton.tag = 0;
        //Selector for the button.  Target is self, the action is the selector to the function, touchupinside.
        [submitButton addTarget:self action:@selector(onSubmit:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:submitButton];
    }
    
    
    //Label for the username created and allocated with a frame
    displayedName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 110.0f, 320.0f, 40.0f)];
    if (displayedName != nil)
    {
        //Sets text, alignment, background color, etc.  Then adds to view
        displayedName.text = @"Please enter username...";
        displayedName.textAlignment = UITextAlignmentCenter;
        displayedName.backgroundColor = [UIColor colorWithRed:1 green:0.894 blue:0.769 alpha:1];
        [self.view addSubview:displayedName];
    }
    
    
    //Creates the button for the date, inits with a rounded rect type
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        //Creates the frame
        dateButton.frame = CGRectMake(10.0f, 180.0f, 90.0f, 30.0f);
        //Sets the tag
        dateButton.tag = 1;
        //Shows the title of the button
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        //Creates the target of the button, and selector and event
        [dateButton addTarget:self action:@selector(onSubmit:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];
    }
    
    
    //Creates the info button
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        //Creates the frame and location on page
        infoButton.frame = CGRectMake(10.0f, 230.0f, 50.0f, 50.0f);
        //Sets the tag number
        infoButton.tag = 2;
        //Adds target, no need for titles since it's an info button
        [infoButton addTarget:self action:@selector(onSubmit:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
    
    }
    
    //Creates a label to house the info
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 300.0f, 320.0f, 60.0f)];
    if (infoLabel != nil)
    {
        //Sets number of lines
        infoLabel.numberOfLines = 2;
        //Sets initial text
        infoLabel.text = @"";
        infoLabel.textColor = [UIColor whiteColor];
        //Aligns text
        infoLabel.textAlignment = UITextAlignmentCenter;
        //Changes background color
        infoLabel.backgroundColor = [UIColor blueColor];
        [self.view addSubview:infoLabel];
    }
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


//Custom function to handle the button selector.
- (void)onSubmit:(UIButton*)submit
{
    
    //Created a switch to use one function for each button.  
    switch (submit.tag) {
        //This is the username button case
        case 0:
        {
            //Converts the name into a string
            name = [usernameText text];
            //If there's nothing entered, display one thing, else display another
            if (name.length == 0)
            {
                displayedName.text = @"Username cannot be empty";
            } else
            {
                //Made an ns string to house a message plus the username.
                successfulLogin = [NSString stringWithFormat: @"User: %@ has been logged in", name];
                displayedName.text = successfulLogin;
            }
        }
        
            break;
        
        //Case for the date button
        case 1:
        {
        
            //Sets up the date with a formatter, allocates memory and inits
            dateToFormat = [[NSDateFormatter alloc] init];
            //This is the format that will display to users
            [dateToFormat setDateFormat:@"h:mm a 'on' EEE, MMM d, ''yy"];
            //Creates a string variable from the date to be used later
            theDate = [dateToFormat stringFromDate:[NSDate date]];
            //Creates an alert view displaying the date and time
            dateAlert = [[UIAlertView alloc] initWithTitle:@"Date and Time" message: theDate delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles: nil];
            if (dateAlert != nil)
            {
                [dateAlert show];
            }
            
        }
            break;
        
        //Case for info button
        case 2:
        {
            //Changes info text 
            infoLabel.text = @"This application was created by: David Magee";
        }
            break;
            
            
        //Always keep a default break
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

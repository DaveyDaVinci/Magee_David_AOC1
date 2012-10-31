//
//  ViewController.m
//  AOC1
//
//  Created by David Magee on 10/30/12.
//  Copyright (c) 2012 David Magee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //This sets the background color for the UI View.
    self.view.backgroundColor = [UIColor colorWithRed:0.737 green:0.561 blue:0.561 alpha:1];
    
    //This is my first label, the object is called and named with the asterisk, then allocated and placed on page
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, 320.0f, 30.0f)];
    
    //This is a check to make sure the label is working correctly, and also sets the style for the label
    if (titleLabel != nil){
        titleLabel.backgroundColor = [UIColor colorWithRed:0.773 green:0.757 blue:0.667 alpha:1];
        titleLabel.text = @"At the Mountains of Madness";
        titleLabel.textAlignment = UITextAlignmentCenter;
    }
    
    //Label for the author 
    UILabel *authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 60.0f, 145.0f, 30.0f)];
    
    //Check and definitions for author label
    if (authorLabel != nil){
        authorLabel.backgroundColor = [UIColor colorWithRed:0.69 green:0.09 blue:0.122 alpha:1];
        authorLabel.text = @"Author";
        authorLabel.textColor = [UIColor colorWithRed:0.702 green:0.788 blue:0.353 alpha:1];
        authorLabel.textAlignment = UITextAlignmentRight;
    }
    
    //Label for the author name
    UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(165.0f, 60.0f, 145.0f, 30.0f)];
    
    //Check and definitions for author name label
    if (authorName != nil){
        authorName.backgroundColor = [UIColor colorWithRed:0.8 green:0.6 blue:0.8 alpha:1];
        authorName.text = @"HP Lovecraft";
        authorName.textColor = [UIColor colorWithRed:0.557 green:0.137 blue:0.137 alpha:1];
        authorName.textAlignment = UITextAlignmentLeft;
    }
    
    //Label for published
    UILabel *publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 145.0f, 30.0f)];
    
    //Check and definitions for published label
    if (publishedLabel != nil){
        publishedLabel.backgroundColor = [UIColor colorWithRed:1 green:0.894 blue:0.769 alpha:1];
        publishedLabel.text = @"Published";
        publishedLabel.textColor = [UIColor colorWithRed:0.922 green:0.369 blue:0.4 alpha:1];
        publishedLabel.textAlignment = UITextAlignmentRight;
    }
    
    //Label for published date
    UILabel *published = [[UILabel alloc] initWithFrame:CGRectMake(165.0f, 100.0f, 145.0f, 30.0f)];
    
    //Check and definitions for published date
    if (published != nil){
        published.backgroundColor = [UIColor colorWithRed:0.737 green:0.824 blue:0.933 alpha:1];
        published.text = @"1936";
        published.textColor = [UIColor colorWithRed:0.624 green:0.439 blue:0.227 alpha:1];
        published.textAlignment = UITextAlignmentLeft;
    }
    
    
    //Label for summary label
    UILabel *summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 140.0f, 145.0f, 30.0f)];
    
    //Check and definitions for summary label
    if (summaryLabel != nil){
        summaryLabel.backgroundColor = [UIColor colorWithRed:0.616 green:0.714 blue:0.549 alpha:1];
        summaryLabel.text = @"Summary";
        summaryLabel.textColor = [UIColor colorWithRed:0.686 green:0.251 blue:0.208 alpha:1];
        summaryLabel.textAlignment = UITextAlignmentLeft;
    }
    
    
    //Label for summary 
    UILabel *summary = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 170.0f, 300.0f, 110.0f)];
    
    //Check and definitions for summary
    if (summary != nil){
        summary.backgroundColor = [UIColor colorWithRed:0.753 green:0.851 blue:0.851 alpha:1];
        summary.text = @"At the Mountains of Madness is a story about a man who travels to the far north and uncovers the remnants of an ancient civilization, as well as those that still reside there.";
        summary.textColor = [UIColor colorWithRed:0.651 green:0.502 blue:0.392 alpha:1];
        summary.textAlignment = UITextAlignmentCenter;
        summary.numberOfLines = 6;
    }
    
    
    
    
    //Created an array and named it, set its size, and filled it in with string values
    NSArray *bookArray = [NSArray arrayWithObjects:@"Ancient Ones", @"Ruins", @"Necronomicon", @"Monsters", @"Airplanes", nil];
    
    //Created a mutable string to hold the array
    NSMutableString *arrayList = [[NSMutableString alloc] initWithCapacity:5];
    
    // For loop goes through the array, and the if statement adds a comma to the end of each item
    for (int i =0; i <[bookArray count]; i++) {
        [arrayList appendString:[bookArray objectAtIndex:i]];
        if (i < bookArray.count -1) {
            [arrayList appendString:@", "];
        }
    }
    
    //Test for values in mutable string
    NSLog(@"%@", arrayList);
    
    
    
    UILabel *nsText = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 290.0f, 300.0f, 60.0f)];
    
    //Check and definitions for summary
    if (summary != nil){
        nsText.backgroundColor = [UIColor colorWithRed:0.714 green:0.773 blue:0.745 alpha:1];
        nsText.text = arrayList;
        nsText.textColor = [UIColor colorWithRed:0.549 green:0.09 blue:0.09 alpha:1];
        nsText.textAlignment = UITextAlignmentCenter;
        nsText.numberOfLines = 3;
    }




    
    //This is needed to actually view the label, like a function call.
    [self.view addSubview:titleLabel];
    [self.view addSubview:authorLabel];
    [self.view addSubview:authorName];
    [self.view addSubview:publishedLabel];
    [self.view addSubview:published];
    [self.view addSubview:summaryLabel];
    [self.view addSubview:summary];
    [self.view addSubview:nsText];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

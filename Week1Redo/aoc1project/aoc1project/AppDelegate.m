//
//  AppDelegate.m
//  aoc1project
//
//  Created by David Magee on 10/29/12.
//  Copyright (c) 2012 David Magee. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    int numberOfShots = 5;
    __unused int numberOfHits = 2;
    int numberOfMonsters = 2;
    int survivors = 3;
    BOOL gotaway = YES;
    int numberOfDaysLeft = 2;
    float amountOfFoodLeft = 3.5f;
    int totalPossibleFood = (int)amountOfFoodLeft + 1;
    
    //nslog for int and float
    NSLog(@"There's %f left in our food bin, out of %d possible.", amountOfFoodLeft, totalPossibleFood);
    
    
    //for and nested for loop
    for (int x=1; x<=numberOfShots; x++){
        NSLog(@"%d shots have been fired",x);
        for (int z=1; z<=numberOfMonsters; z++){
            NSLog(@"%d monsters have been shot",z);
        }
    }
    
    //while loop
    while (numberOfShots > numberOfMonsters){
        NSLog(@"We can still kill all the monsters!");
        numberOfMonsters++;
    }
    
    
    
    //and or comparisons
    
    if ((gotaway == YES) && (amountOfFoodLeft > numberOfDaysLeft))
    {
        NSLog(@"We've made it!");
    }
    else if ((gotaway == YES) || (amountOfFoodLeft > numberOfDaysLeft))
    {
        NSLog(@"Almost, but not quite");
    }
    else
    {
        NSLog(@"No one will be making it today...");
    }
    
    
    //NSlog if else if else statements
    
    if (survivors == 1)
    {
        NSLog(@"You are the only survivor!");
    }
    else if (survivors == 0)
    {
        NSLog(@"No one survived.");
    }
    else
    {
        NSLog(@"More lived than was to be expected.");
    }
    
    

    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Gregor Brett on 21/03/2013.
//  Copyright (c) 2013 Gregor Brett. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

-(IBAction)showCurrentTime:(id)sender{
    NSDate *now = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    [timeLabel setText:[formatter stringFromDate:now]];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    //self = [super initWithNibName:nil bundle:nil];
    
    NSBundle *appBundle = [NSBundle mainBundle];
    
    self = [super initWithNibName:@"TimeViewController" bundle:appBundle];
    
    if(self){
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Time"];
        
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        [tbi setImage:i];
    }
    
    [[self view]setBackgroundColor:[UIColor greenColor]];
    
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self showCurrentTime:nil];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}


@end

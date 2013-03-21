//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Gregor Brett on 21/03/2013.
//  Copyright (c) 2013 Gregor Brett. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

-(void)loadView{
    //create a view
    CGRect frame = [[UIScreen mainScreen]bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    [self setView:v];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nil bundle:nil];
    
    if(self){
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Hypnosis"];
        
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        [tbi setImage:i];
    }
    
    return self;
}

-(void)viewDidLoad{
    NSLog(@"all hail the hypnotoad");
}

@end

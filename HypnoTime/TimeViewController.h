//
//  TimeViewController.h
//  HypnoTime
//
//  Created by Gregor Brett on 21/03/2013.
//  Copyright (c) 2013 Gregor Brett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeViewController : UIViewController{
    __weak IBOutlet UILabel *timeLabel;
}

-(IBAction)showCurrentTime:(id)sender;

@end
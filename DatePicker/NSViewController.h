//
//  NSViewController.h
//  DatePicker
//
//  Created by Николай Савельев on 31.10.13.
//  Copyright (c) 2013 Николай Савельев. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIDatePicker *datepick;

- (IBAction)showDate;

@end

//
//  NSViewController.m
//  DatePicker
//
//  Created by Николай Савельев on 31.10.13.
//  Copyright (c) 2013 Николай Савельев. All rights reserved.
//

#import "NSViewController.h"

@interface NSViewController ()

@end

@implementation NSViewController

@synthesize datepick;

-(IBAction)showDate {
    
    
    NSDate *date =[NSDate date]; // создаем указатель на переменную с датой
    date = datepick.date; // присваиваем переменной дату выбранную на DatePick
   
    id array[30]; // массив для дат
    
    NSDateFormatter *format = [[NSDateFormatter alloc] init]; // переменная для форматирования даты
    [format setTimeStyle:NSDateFormatterNoStyle];
    [format setDateStyle:NSDateFormatterMediumStyle];
    //NSString *string; // переменная для даты в формате стринги
    
    for (int i = 0; i < 30; i ++) {
        date = [date dateByAddingTimeInterval:-86400]; // -1 день
        array [i] = [format stringFromDate:date]; // перевод даты в строку
        //array[i] = string;
    }
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Выбранная дата"
                                                   message:array[29]
                                                  delegate:nil
                                         cancelButtonTitle:@"OK"
                                         otherButtonTitles:nil];
    [alert show];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

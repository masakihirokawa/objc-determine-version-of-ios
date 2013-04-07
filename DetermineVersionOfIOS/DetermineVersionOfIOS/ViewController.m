//
//  ViewController.m
//  DetermineVersionOfIOS
//
//  Created by Dolice on 2013/04/07.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self determineVersionOfIOS];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)determineVersionOfIOS
{
  NSString *iosVersion= [[[UIDevice currentDevice] systemVersion] stringByTrimmingCharactersInSet:
                         [NSCharacterSet whitespaceCharacterSet]];
  if([iosVersion floatValue] >= 6.0){
    //iOSバージョン6以上
    NSLog(@"iOS version 6 or higher");
  } else {
    //iOSバージョン6未満
    NSLog(@"iOS version is less than 6");
  }
}

@end

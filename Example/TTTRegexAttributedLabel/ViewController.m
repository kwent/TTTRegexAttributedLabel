//
//  ViewController.m
//  TTTRegexAttributedLabel
//
//  Created by Quentin Rousseau on 13/11/2013.
//  Copyright (c) 2013 Quentin Rousseau. All rights reserved.
//

#import "ViewController.h"
#import "TTTRegexAttributedLabel.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  
    self.view.backgroundColor = [UIColor whiteColor];
  
    
    //SET FONT ONLY ON FIRST MATCH REGEX
    TTTRegexAttributedLabel *label1 = [[TTTRegexAttributedLabel alloc] initWithFrame:CGRectMake(25, 40, self.view.bounds.size.width - 50, 160)];
    label1.numberOfLines = 0;
    label1.textAlignment = NSTextAlignmentCenter;
    NSString *s1 = @"\"kitty\" regex & first match:\rSoft kitty,\nWarm kitty,\nLittle ball of fur.\nHappy kitty,\nSleepy kitty,\nPurr, purr, purr.";
    [label1 setText:s1 withFirstMatchRegex:@" kitty"
         withFont:[UIFont boldSystemFontOfSize:20]
        withColor:[UIColor redColor]];
  
    //SET FONT & COLOR EVERY MATCHES
    TTTRegexAttributedLabel *label2 = [[TTTRegexAttributedLabel alloc] initWithFrame:CGRectMake(25, 200, self.view.bounds.size.width - 50, 160)];
    label2.numberOfLines = 0;
    label2.textAlignment = NSTextAlignmentCenter;
    NSString *s2 = @"\"kitty\" regex & every matches:\rSoft kitty,\nWarm kitty,\nLittle ball of fur.\nHappy kitty,\nSleepy kitty,\nPurr, purr, purr.";
    [label2 setText:s2 withRegex:@" kitty"
         withFont:[UIFont boldSystemFontOfSize:20]
        withColor:[UIColor redColor]];
  
    ///SET FONT ONLY ON FIRST MATCH REGEX
    TTTRegexAttributedLabel *label3 = [[TTTRegexAttributedLabel alloc] initWithFrame:CGRectMake(25, 370, self.view.bounds.size.width - 50, 50)];
    label3.numberOfLines = 0;
    label3.textAlignment = NSTextAlignmentCenter;
    NSString *s3 = @"\"\\d{3}\" regex & first match:\r 10, 12, 13, 200, 300";
    [label3 setText:s3 withFirstMatchRegex:@"(\\d{3})"
         withFont:[UIFont boldSystemFontOfSize:20]
        withColor:[UIColor blueColor]];
  
    //SET FONT & COLOR EVERY MATCHES
    TTTRegexAttributedLabel *label4 = [[TTTRegexAttributedLabel alloc] initWithFrame:CGRectMake(25, 430, self.view.bounds.size.width - 50, 50)];
    label4.numberOfLines = 0;
    label4.textAlignment = NSTextAlignmentCenter;
    NSString *s4 = @"\"\\d{3}\" regex & every matches:\r 10, 12, 13, 200, 300";
    [label4 setText:s4 withRegex:@"(\\d{3})"
         withFont:[UIFont boldSystemFontOfSize:20]
        withColor:[UIColor blueColor]];
  
  [self.view addSubview:label1];
  [self.view addSubview:label2];
  [self.view addSubview:label3];
  [self.view addSubview:label4];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

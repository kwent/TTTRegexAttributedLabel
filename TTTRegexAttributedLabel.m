//
//  TTTRegexAttributedLabel.h
//  TTTRegexAttributedLabel
//
//  Created by Rousseau Quentin on 02/10/12.
//  Copyright (c) 2013 Quentin Rousseau. All rights reserved.
//

#import "TTTRegexAttributedLabel.h"

@implementation TTTRegexAttributedLabel

- (void) setText:(id)text withFirstMatchRegex:(NSString*)regex withFont:(UIFont*)font
{
  [self setText:text withFirstMatchRegex:regex withFont:font withColor:nil];
}

- (void) setText:(id)text withFirstMatchRegex:(NSString*)regex withFont:(UIFont*)font withColor:(UIColor*)color
{
  [self setText:text withFirstMatchRegex:regex withRegexOptions:NSRegularExpressionCaseInsensitive withFont:font withColor:color];
}
  
- (void) setText:(id)text withFirstMatchRegex:(NSString*)regex withRegexOptions:(NSRegularExpressionOptions)regexOption withFont:(UIFont*)font withColor:(UIColor*)color
{
  NSRegularExpression *rg = [NSRegularExpression regularExpressionWithPattern:regex options:regexOption error:nil];
  NSTextCheckingResult *match = [rg firstMatchInString:text options:0 range:NSMakeRange(0, [text length])];
  
  [self setText:text afterInheritingLabelAttributesAndConfiguringWithBlock:^NSMutableAttributedString *(NSMutableAttributedString *mutableAttributedString) {
    CTFontRef customFont = CTFontCreateWithName((__bridge CFStringRef)font.fontName, font.pointSize, NULL);
    if (customFont)
    {
      [mutableAttributedString addAttribute:(NSString *)kCTFontAttributeName value:(__bridge id)customFont range:match.range];
      if (color)
        [mutableAttributedString addAttribute:(NSString *)kCTForegroundColorAttributeName value:(id)color.CGColor range:match.range];
      CFRelease(customFont);
    }
    return mutableAttributedString;
  }];
}

- (void) setText:(id)text withRegex:(NSString*)regex withFont:(UIFont*)font
{
  [self setText:text withRegex:regex withFont:font withColor:nil];
}

- (void) setText:(id)text withRegex:(NSString*)regex withFont:(UIFont*)font withColor:(UIColor*)color
{
  [self setText:text withRegex:regex withRegexOptions:NSRegularExpressionCaseInsensitive withFont:font withColor:color];
}
  
- (void) setText:(id)text withRegex:(NSString*)regex withRegexOptions:(NSRegularExpressionOptions)regexOption withFont:(UIFont*)font withColor:(UIColor*)color
{
  
  NSRegularExpression *rg = [NSRegularExpression regularExpressionWithPattern:regex options:regexOption error:nil];
  
  NSArray *matches = [rg matchesInString:text options:0 range:NSMakeRange(0, [text length])];
  
  [self setText:text afterInheritingLabelAttributesAndConfiguringWithBlock:^NSMutableAttributedString *(NSMutableAttributedString *mutableAttributedString)
  {
    CTFontRef customFont = CTFontCreateWithName((__bridge CFStringRef)font.fontName, font.pointSize, NULL);
    
    for (NSTextCheckingResult *match in matches)
    {
      if (customFont)
      {
        [mutableAttributedString addAttribute:(NSString *)kCTFontAttributeName value:(__bridge id)customFont range:match.range];
        if(color)
          [mutableAttributedString addAttribute:(NSString *)kCTForegroundColorAttributeName value:(id)color.CGColor range:match.range];

      }
    }
    CFRelease(customFont);
    return mutableAttributedString;
  }];
}

@end

//
//  TTTRegexAttributedLabel.h
//  TTTRegexAttributedLabel
//
//  Created by Rousseau Quentin on 02/10/12.
//  Copyright (c) 2012 Onefeat. All rights reserved.
//

#import "TTTAttributedLabel/TTTAttributedLabel.h"

@interface TTTRegexAttributedLabel: TTTAttributedLabel

- (void) setText:(id)text withFirstMatchRegex:(NSString*)regex withFont:(UIFont*)font withColor:(UIColor*)color;
- (void) setText:(id)text withFirstMatchRegex:(NSString*)regex withFont:(UIFont*)font;
- (void) setText:(id)text withRegex:(NSString*)regex withFont:(UIFont*)font withColor:(UIColor*)color;;
- (void) setText:(id)text withRegex:(NSString*)regex withFont:(UIFont*)font;

@end

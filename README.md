# TTTRegexAttributedLabel
## Add additions functions to TTTAttributedLabel.

`TTTRegexAttributedLabel` allows to set Font & Color to TTTAttributedLabel via Regex easier.

## Example Usage

``` objective-c
  //SET FONT ONLY ON FIRST MATCH REGEX
  TTTRegexAttributedLabel *label = [[TTTRegexAttributedLabel alloc] init];
  NSString *s = @"Post created \rby Kwent";
  [self.label setText:s withFirstMatchRegex:@"^[^\\r]*" withFont:[UIFont boldSystemFontOfSize:14] withColor:[UIColor redColor]];

  //SET FONT &COLOR EVERY MATCHES
  TTTRegexAttributedLabel *label = [[TTTRegexAttributedLabel alloc] init];
  NSString *s = @"10, 12, 13, 200, 300";
  [self.label setText:f.main_title withRegex:@"(\\d{3})" withFont:[UIFont boldSystemFontOfSize:14] withColor:[UIColor greenColor]];
```

## Functions available

``` objective-c
- (void)setText:(id)text withFirstMatchRegex:(NSString*)regex withFont:(UIFont*)font withColor:(UIColor*)color;
- (void)setText:(id)text withFirstMatchRegex:(NSString*)regex withFont:(UIFont*)font;
- (void)setText:(id)text withRegex:(NSString*)regex withFont:(UIFont*)font withColor:(UIColor*)color;;
- (void)setText:(id)text withRegex:(NSString*)regex withFont:(UIFont*)font;
```

## Credits

Inspired by [Mattt Thompson](https://github.com/mattt)'s [TTTAttributedLabel](https://github.com/mattt/TTTAttributedLabel), borrowing some general approaches in converting between UIKit and Core Text text attributes.

## Contact

Quentin Rousseau

- https://github.com/kwent
- http://twitter.com/quentinrousseau
- contact@quentinrousseau.clm

## License

TTTRegexAttributedLabel is available under the MIT license. See the LICENSE file for more info.

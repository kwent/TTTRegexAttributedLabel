Pod::Spec.new do |s|
  s.name         = 'TTTRegexAttributedLabel'
  s.version      = '1.0.0'
  s.authors      = { 'Quentin Rousseau' => 'contact@quent.in' }
  s.homepage     = 'https://github.com/kwent/TTTRegexAttributedLabel'
  s.platform     = :ios
  s.summary      = 'TTTRegexAttributedLabel allows to set Font & Color to TTTAttributedLabel via Regex easier.'
  s.source       = { :git => 'https://github.com/kwent/TTTRegexAttributedLabel.git', :tag => s.version.to_s }
  s.license      = 'MIT'
  s.frameworks   = 'UIKit', 'CoreText', 'CoreGraphics', 'QuartzCore'
  s.source_files = 'TTTRegexAttributedLabel'
  s.requires_arc = true
  s.ios.deployment_target = '4.3'
  s.social_media_url = 'https://twitter.com/quentinrousseau'
  
  # Dependencies
  s.dependency   'TTTAttributedLabel', '> 1.4.0'
end
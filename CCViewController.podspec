Pod::Spec.new do |s|
  s.name         = "CCViewController"
  s.version      = "1.0"
  s.summary      = "A view controller supporting Cocos2D use from a Storyboard"
  s.description  = <<-DESC
		A fork of tinytimgames/CCViewController to modernize and add cocopod support.
    DESC
  s.homepage     = "https://github.com/levigroker/CCViewController"
  s.license      = 'Custom'
  s.author       = { "Levi Brown" => "levigroker@gmail.com" }
  s.source       = { :git => "https://github.com/levigroker/CCViewController.git", :tag => "1.0" }
  s.platform     = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.source_files = 'CCViewController/*.{h,m}'
  s.frameworks = 'Foundation', 'UIKit'
  s.dependency 'cocos2d', '2.0'
  s.requires_arc = true
end

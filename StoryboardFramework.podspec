Pod::Spec.new do |s|
  s.name         = "StoryboardFramework"
  s.version      = "1.0.0"
  s.summary      = "iOS Framework with Storyboard"
  s.homepage     = "https://github.com/jhseo/StoryboardFramework"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "jhseo" => "sjh7893@gmail.com" }
  s.platform     = :ios, "13.0"
  s.source       = { :git => 'https://github.com/jhseo/StoryboardFramework.git', :tag => "#{s.version}" }
  s.swift_version = "5.0"

  s.source_files = "Sources/StoryboardFramework/*"
  s.framework = "UIKit"
end

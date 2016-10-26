Pod::Spec.new do |s|
  s.name         = 'UIAlertController+Show'
  s.version      = '0.2.1'
  s.summary      = 'Show UIAlertControllers from anywhere.'

  s.description  = <<-DESC
                   Light-weight extension to UIAlertController that adds 'show' method for presenting Alerts / Action Sheets from anywhere
                   DESC

  s.homepage     = 'https://github.com/hightower/UIAlertController-Show'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { 'Erik Ackermann' => 'erik@gethightower.com', 'Dustin Burge' => 'dustin@gethightower.com' }
  s.social_media_url   = 'http://twitter.com/erikwithfriends'

  s.platform              = :ios
  s.ios.deployment_target = '8.0'

  s.source       = { :git => 'https://github.com/hightower/UIAlertController-Show.git', :tag => s.version }
  s.source_files = 'UIAlertController+Show/UIAlertController+Show.swift'
  s.frameworks   = 'Foundation', 'UIKit'
  s.requires_arc = true

end

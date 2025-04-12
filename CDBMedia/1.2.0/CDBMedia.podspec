Pod::Spec.new do |s|
  s.name             = 'CDBMedia'
  s.version          = '1.2.0'
  s.summary          = 'The audio content delivery system for Chinese Daily Bread.'
  s.description      = <<-DESC
  CDBMedia is a library for managing and delivering audio content for the Chinese Daily Bread app.
                       DESC

  s.homepage         = 'https://github.com/eddy-lau/CDBMedia'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'eddy-lau' => 'eddie@touchutility.com' }
  s.source           = { :git => 'https://github.com/eddy-lau/CDBMedia.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  
  s.source_files = 'CDBMedia/Classes/**/*'
  s.dependency 'PromiseKit'
  s.dependency 'Firebase/Storage'
  s.dependency 'SwiftTryCatchFix'
  s.framework = 'AVFoundation'
  
end

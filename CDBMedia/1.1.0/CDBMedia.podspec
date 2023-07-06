Pod::Spec.new do |s|
  s.name             = 'CDBMedia'
  s.version          = '1.1.0'
  s.summary          = 'A short description of CDBMedia.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/eddy-lau/CDBMedia'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'eddy-lau' => 'eddie@touchutility.com' }
  s.source           = { :git => 'https://github.com/eddy-lau/CDBMedia.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  
  s.source_files = 'CDBMedia/Classes/**/*'
  s.dependency 'PromiseKit', "~> 6.8"
  s.dependency 'Firebase/Storage'
  s.dependency 'SwiftTryCatch'
  s.framework = 'AVFoundation'
  
end

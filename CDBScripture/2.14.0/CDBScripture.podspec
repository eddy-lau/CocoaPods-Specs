#
# Be sure to run `pod lib lint CDBScripture.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CDBScripture'
  s.version          = '2.14.0'
  s.summary          = 'The scripture loader for Chinese Daily Bread'
  s.description      = <<-DESC
The scripture loader for Chinese Daily Bread iOS App.
                       DESC

  s.homepage         = 'https://github.com/eddy-lau/CDBScripture'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'eddy-lau' => 'eddie@touchutility.com' }
  s.source           = { :git => 'https://github.com/eddy-lau/CDBScripture.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  
  s.subspec 'CDBScripture' do |sp|
    sp.source_files = 'CDBScripture/Classes/**/*'
    sp.resource_bundles = {
      'CDBScripture' => ['CDBScripture/Assets/**/*']
    }
    sp.dependency 'CDBScripture/Scripture'
  end
  
  s.subspec 'Scripture' do |sp|
    sp.source_files = 'Scripture/Classes/**/*'
    sp.dependency 'ZIPFoundation', '~> 0.9'
    sp.dependency 'SwiftSoup'
    sp.dependency 'PopoverFix'
    sp.dependency 'ZhHans'
  end
  
end

#
# Be sure to run `pod lib lint CDBScripture.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CDBScripture'
  s.version          = '1.1.0'
  s.summary          = 'A short description of CDBScripture.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/eddy-lau/CDBScripture'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'eddy-lau' => 'eddie@touchutility.com' }
  s.source           = { :git => 'https://github.com/eddy-lau/CDBScripture.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.source_files = 'CDBScripture/Classes/**/*'
  s.resource_bundles = {
     'CDBScripture' => ['CDBScripture/Assets/**/*']
  }

  s.dependency 'ZIPFoundation', '~> 0.9'
  s.dependency 'SwiftSoup'
  s.dependency 'Popover'
  s.dependency 'ZhHans'


end

#
# Be sure to run `pod lib lint CDBStore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CDBStore'
  s.version          = '1.23.1'
  s.summary          = 'The content of the Chinese Daily Bread app.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This package contains all the content of the Chinese Daily Bread app and the swift loader for loading from an iOS App.
                       DESC

  s.homepage         = 'https://github.com/eddy-lau/CDBStore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'eddy-lau' => 'eddie@touchutility.com' }
  s.source           = { :git => 'https://github.com/eddy-lau/CDBStore.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_versions = '5.0'
  s.source_files = 'CDBStore/Classes/**/*'  
  s.resource_bundles = {
    'CDBStore' => ['CDBStore/Assets/*']
  }
  s.dependency 'ZIPFoundation', '~> 0.9'
  s.dependency 'ZhHans'

end

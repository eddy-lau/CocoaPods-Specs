#
# Be sure to run `pod lib lint CDBScripture.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CDBScripture'
  s.version          = '3.3.0'
  s.summary          = 'The scripture loader for Chinese Daily Bread'
  s.description      = <<-DESC
The scripture loader for Chinese Daily Bread iOS App.
                       DESC

  s.homepage         = 'https://github.com/eddy-lau/CDBScripture'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'eddy-lau' => 'eddie@touchutility.com' }
  s.source           = { :git => 'https://github.com/eddy-lau/CDBScripture.git', :tag => s.version.to_s }

  s.ios.deployment_target = '16.0'
  s.swift_version = '5.0'

  # NOTE: no resource_bundles — scripture content is cloud-delivered and
  # the bundled zip has been removed (CDBCloudScriptureLoader serves from
  # cache/Storage; a missing zip throws, never crashes).
  #
  # Single spec (3.1.0): the former CDBScripture/Scripture/Cloud subspecs
  # are gone. The app is the only consumer, so the split was inert — and
  # with a second subscriber it would emit two pod targets producing the
  # same CDBScripture.framework, which breaks `xcodebuild archive`
  # ("Multiple commands produce"; see CDBStore 2.2.0 for the same lesson).
  # A Firebase-free consumer, if one is ever needed, must be a SEPARATE POD:
  # extensions must never get Firebase into their pod graph either
  # (duplicates Firebase-internal targets like GoogleUtilities).
  s.source_files = ['CDBScripture/Classes/**/*', 'Scripture/Classes/**/*', 'CDBScripture/Cloud/**/*']
  s.dependency 'ZIPFoundation', '~> 0.9'
  s.dependency 'SwiftSoup'
  s.dependency 'PopoverFix'
  s.dependency 'ZhHans', '~> 1.9.0'
  # Storage fetch-on-read in front of the (removed) bundled zip.
  # Scripture.loader picks the cloud loader automatically via canImport.
  s.dependency 'Firebase/Storage'

end

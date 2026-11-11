#
# Be sure to run `pod lib lint CDBStore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CDBStore'
  s.version          = '2.3.0'
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

  s.ios.deployment_target = '16.0'
  s.swift_versions = '5.0'

  # NOTE: no resource_bundles anywhere — all content is cloud-delivered
  # (CDBContentSync prefetch + CDBCloudStore fetch-on-read into the
  # app-group cache). Assets/cdb keeps the four root catalog JSONs in-tree
  # purely as the cdb-publish upload source; they must NOT be bundled
  # (a bundled copy would shadow cloud updates via the bundle fallback).
  #
  # Single spec, Firebase-free (2.2.0): the sync layer lives in the separate
  # CDBStoreCloud pod. Extensions must not consume Firebase — with it in
  # their pod graph, Firebase's own subspec sets diverge from the app's and
  # CocoaPods materializes duplicate GoogleUtilities targets ("Multiple
  # commands produce ... GoogleUtilities.framework" at archive). One spec
  # also means one pod target whatever consumes it (a former Core/Cloud
  # subspec split produced two targets that both emitted CDBStore.framework).
  s.source_files = 'CDBStore/Classes/Core/**/*'
  s.dependency 'ZIPFoundation', '~> 0.9'
  s.dependency 'ZhHans'

end

#
# CDBStoreCloud — the Firebase-backed sync layer for CDBStore.
#
# Separate pod on purpose: the app links it, the widget/today extensions do
# not. With Firebase in the extensions' pod graph, Firebase's internal
# subspec sets diverge between the app aggregate and the extension
# aggregates, and CocoaPods materializes DUPLICATE GoogleUtilities targets —
# `xcodebuild archive` then fails with "Multiple commands produce
# GoogleUtilities.framework". Keeping the sync layer here lets every target
# consume CDBStore itself identically (one pod target, one framework), with
# only the app pulling Firebase.
#
# Activation stays hook-based: CDBStore (Core) resolves this pod's
# CDBContentSync class reflectively on first store use — linked ⇒ sync
# starts, absent ⇒ no-op (extensions read the shared cache only).
#
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CDBStoreCloud'
  s.version          = '1.0.2'
  s.summary          = 'Cloud sync layer (RTDB manifest observer + Storage fetch-on-read) for CDBStore.'

  s.description      = <<-DESC
  Watches the CDB content manifest in RTDB and keeps the app-group content
  cache warm for CDBStore. Consumed by the app target only.
                       DESC

  s.homepage         = 'https://github.com/eddy-lau/CDBStore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'eddy-lau' => 'eddie@touchutility.com' }
  # Distinct tag scheme — the repo also hosts CDBStore itself (tags "2.x").
  s.source           = { :git => 'https://github.com/eddy-lau/CDBStore.git', :tag => "cloud-#{s.version}" }

  s.ios.deployment_target = '16.0'
  s.swift_versions = '5.0'

  s.source_files = 'CDBStore/Classes/Cloud/**/*'
  s.dependency 'CDBStore'
  s.dependency 'Firebase/Database'
  s.dependency 'Firebase/Storage'
  s.dependency 'Firebase/Auth'

end

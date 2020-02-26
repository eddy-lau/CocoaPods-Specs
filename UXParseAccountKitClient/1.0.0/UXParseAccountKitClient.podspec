Pod::Spec.new do |spec|
  spec.name         = 'UXParseAccountKitClient'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/eddy-lau/UXParseAccountKitClient'
  spec.authors      = { 'Eddie Lau' => 'eddie@touchutility.com' }
  spec.summary      = 'Parse Account Kit Client for PhoneNotes Server'
  spec.source       = { :git => 'https://github.com/eddy-lau/UXParseAccountKitClient.git', :tag => spec.version.to_s }
  spec.source_files = 'UXParseAccountKitClient.swift'
  spec.ios.deployment_target  = '8.0'
  spec.requires_arc = true
  spec.frameworks = 'AccountKit'
  spec.resources    = 'AccountKitStrings.bundle'
  spec.vendored_frameworks = 'AccountKit.framework'
  spec.user_target_xcconfig = {'FRAMEWORK_SEARCH_PATHS' => '"$PODS_ROOT/UXParseAccountKitClient"'}
  spec.dependency 'Parse'
  spec.dependency 'BFTask-PromiseKit'
end

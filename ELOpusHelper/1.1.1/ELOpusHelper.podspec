#
# Be sure to run `pod lib lint ELOpusHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ELOpusHelper'
  s.version          = '1.1.1'
  s.summary          = 'ELOpusHelper is the OPUS Audio encoder/decoder.'
  s.description      = <<-DESC
  ELOpusHelper is an easy to use Objective-C library to decode OPUS audio data to PCM data/file, as well as to encode PCM data to OPUS audio data.
                       DESC
  s.homepage         = 'https://github.com/eddy-lau/ELOpusHelper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'eddy-lau' => 'eddie@touchutility.com' }
  s.source           = { :git => 'https://github.com/eddy-lau/ELOpusHelper.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.3'

  s.source_files = 'ELOpusHelper/Classes/**/*'
  s.vendored_libraries = 'ELOpusHelper/libogg.a', 'ELOpusHelper/libopus.a'
  s.public_header_files = 'ELOpusHelper/Classes/**/*.h'
  s.private_header_files = 'ELOpusHelper/Classes/opus/*.h', 'ELOpusHelper/Classes/ogg/*.h'
  
end

#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
#
version_file = File.expand_path('../../VERSION', __dir__)
sdk_version = File.exist?(version_file) ? File.read(version_file).strip : '0.0.4'

Pod::Spec.new do |s|
  s.name             = 'pusher'
  s.version          = sdk_version
  s.summary          = 'Pusher mobile SDK Flutter plugin'
  s.description      = <<-DESC
Flutter plugin bridge for Pusher native hello and notification receipts.
                       DESC
  s.homepage         = 'https://github.com/pusher-tr/sdk'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Pusher' => 'dev@pusher.tr' }
  s.source           = { :path => '.' }
  s.platform         = :ios, '15.0'
  s.swift_version    = '5.0'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }

  s.dependency 'Flutter'

  s.source_files = 'Classes/**/*', 'Sources/PusherCore/**/*.{swift,h,m}'
  s.resource_bundles = {
    'pusher_privacy' => ['Sources/PusherCore/PrivacyInfo.xcprivacy']
  }
end

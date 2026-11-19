#
# NSE / native-only. Separate pod so CocoaPods does not emit a second
# pusher.framework beside the Flutter plugin target (archive conflict).
#
version_file = File.expand_path('../../VERSION', __dir__)
sdk_version = File.exist?(version_file) ? File.read(version_file).strip : '0.0.4'

Pod::Spec.new do |s|
  s.name             = 'PusherCore'
  s.version          = sdk_version
  s.summary          = 'Pusher native iOS SDK (no Flutter; safe for NSE)'
  s.description      = <<-DESC
Native hello and receipt helpers without Flutter.framework. Use this pod in a
Notification Service Extension. Runner should use the pusher plugin pod.
                       DESC
  s.homepage         = 'https://github.com/pusher-tr/sdk'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Pusher' => 'dev@pusher.tr' }
  s.source           = { :path => '.' }
  s.platform         = :ios, '15.0'
  s.swift_version    = '5.0'
  s.module_name      = 'PusherCore'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }

  s.source_files = 'Sources/PusherCore/**/*.{swift,h,m}'
  s.resource_bundles = {
    'PusherCore_Privacy' => ['Sources/PusherCore/PrivacyInfo.xcprivacy']
  }
end

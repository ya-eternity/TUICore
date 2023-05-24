#
# Be sure to run `pod lib lint SLDeveloperTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TUICore'
  s.version          = '0.0.1'
  s.summary          = 'A short description of TUICore.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ya-eternity/TUICore'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ya-eternity' => 'yeziyan825@gmail.com' }
  s.source           = { :git => 'https://github.com/ya-eternity/TUICore.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '9.0'
  s.platform     = :ios, "9.0"
#  s.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '', "ENABLE_BITCODE" => "NO" }
#  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
  s.requires_arc = true
  s.static_framework = true
  
  s.subspec "TUICore" do |th|
    th.source_files = 'TUICore/*.{h,m}'
    th.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    th.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  end
  
  s.resource = 'TUICore/Resources/TUICore.bundle', 'TUICore/Resources/TUICoreTheme_Minimalist.bundle', 'TUICore/Resources/TUICoreTheme.bundle', 'TUICore/Resources/TUIKitLocalizable.bundle'
  
end

#
# Be sure to run `pod lib lint Panther.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QMKJShanks'
  s.version          = '1.0.2'
  s.summary          = 'A short description of Panther.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/flyand007/ShanksSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fisher' => 'xxxxxxxxx@qq.com' }
  s.source = { :http => 'https://github.com/flyand007/ShanksSDK/releases/download/1.0.0/QMKJShanks.zip' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

#  s.ios.vendored_frameworks = 'QMKJShanks.framework'

  s.ios.deployment_target = '13.0'
  s.static_framework = true
  s.swift_version = '5.0'

  s.frameworks = 'UIKit'

  s.source_files = 'Classes/**/*'
  
  s.resource_bundles = {
    'QMKJShanks' => ['Assets/**/*']
  }
  s.dependency 'Google-Mobile-Ads-SDK',' ~> 12.1.0'
  
  s.dependency 'FirebaseRemoteConfig'
  s.dependency 'SVProgressHUD'
  s.dependency 'SensorsAnalyticsSDK'
  s.dependency 'SnapKit'

  
  s.dependency 'GoogleUserMessagingPlatform','~> 3.0.0'
  s.dependency 'Masonry'

  
  s.dependency 'GoogleMobileAdsMediationFacebook', '~> 6.17.1.0'
   s.dependency 'GoogleMobileAdsMediationAppLovin', '~> 13.1.0.0'
   s.dependency 'GoogleMobileAdsMediationVungle', '~> 7.4.5.0'
   s.dependency 'GoogleMobileAdsMediationUnity', '~> 4.14.0.0'
   s.dependency 'bigo-ads-admob-adapter','~> 4.6.0.0'
    s.dependency 'GoogleMobileAdsMediationPangle', '~> 7.4.1.0.0'
   s.dependency 'GoogleMobileAdsMediationMintegral', '~> 7.7.7.0'
   s.dependency 'GoogleMobileAdsMediationIronSource', '~>8.8.0.0.0'


   s.dependency   'AppLovinMediationGoogleAdapter','~> 12.1.0'
   s.dependency  'AppLovinMediationMintegralAdapter','~> 7.7.7.0.0'
   s.dependency  'AppLovinMediationUnityAdsAdapter', '~> 4.14.0.0'
   s.dependency 'AppLovinMediationVungleAdapter', '~> 7.4.5.0'
   s.dependency 'AppLovinMediationFacebookAdapter', '~> 6.17.1.0'
   s.dependency 'AppLovinMediationBigoAdsAdapter', '~> 4.6.0.0'
   s.dependency 'AppLovinMediationFyberAdapter', '~> 8.3.5.1'
   s.dependency 'AppLovinMediationIronSourceAdapter', '~> 8.8.0.0.0'


end

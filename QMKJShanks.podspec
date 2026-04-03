Pod::Spec.new do |s|
  s.name             = 'QMKJShanks'
  s.version          = '1.3.5'
  s.summary          = 'ShanksLib binary distribution'
  s.description      = <<-DESC
    ShanksLib 是一个闭源 Framework，提供 XXX 功能。
  DESC
  s.homepage         = 'https://github.com/flyand007/ShanksSDK/'
  s.license          = { :type => 'Commercial', :text => 'Proprietary software' }
  s.author           = { 'Your Name' => 'your@email.com' }
  s.platform         = :ios, '13.0'
  s.ios.deployment_target = '13.0'
  s.swift_versions = ['5.0', '5.7', '5.9']

  # ① 指向包含 .xcframework 和 .bundle 的 zip（根目录）
  s.source = {
    :http => 'https://github.com/flyand007/ShanksSDK/releases/download/1.3.5/QMKJShanks_Package.zip'
  }

  # ② 声明二进制框架
  s.vendored_frameworks = 'QMKJShanks.xcframework'

  # ③ 声明资源 bundle（CocoaPods 会把它拷贝进宿主 App）
  s.resources = 'QMKJShanks.bundle'
  # 若资源在子目录，可用通配：'**/QMKJShanks.bundle'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'IPHONEOS_DEPLOYMENT_TARGET' => '13.0',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  # 你的依赖（保持不变）
  s.dependency 'Google-Mobile-Ads-SDK'
  s.dependency 'FirebaseRemoteConfig'
  s.dependency 'SVProgressHUD'
  s.dependency 'SensorsAnalyticsSDK'
  s.dependency 'SnapKit'
  s.dependency 'GoogleUserMessagingPlatform','~> 3.0.0'
s.dependency 'Adjust'

        s.dependency 'GoogleMobileAdsMediationFacebook', '6.21.1.0'
   s.dependency 'GoogleMobileAdsMediationAppLovin', '13.6.0.0'
   s.dependency 'GoogleMobileAdsMediationVungle', '7.7.0.0'
   s.dependency 'GoogleMobileAdsMediationUnity', '4.16.6.1'
   s.dependency 'bigo-ads-admob-adapter', '5.1.0.0'
   s.dependency 'GoogleMobileAdsMediationPangle', '7.9.0.6.0'
   s.dependency 'GoogleMobileAdsMediationMintegral', '8.0.7.0'
   s.dependency 'GoogleMobileAdsMediationIronSource', '9.3.0.0.1'
   s.dependency 'GoogleMobileAdsMediationMoloco', '4.3.0.2'

   s.dependency 'AppLovinMediationGoogleAdapter', '13.1.0.1'
   s.dependency 'AppLovinMediationMintegralAdapter', '8.0.7.0.0'
   s.dependency 'AppLovinMediationUnityAdsAdapter', '4.16.6.0'
   s.dependency 'AppLovinMediationVungleAdapter', '7.7.0.0'
   s.dependency 'AppLovinMediationFacebookAdapter', '6.21.1.0'
   s.dependency 'AppLovinMediationBigoAdsAdapter', '5.1.0.0'
   s.dependency 'AppLovinMediationFyberAdapter', '8.4.5.0'
   s.dependency 'AppLovinMediationIronSourceAdapter', '9.3.0.0.0'
   s.dependency 'AppLovinMediationByteDanceAdapter', '7.9.0.6.1'
   s.dependency 'AppLovinMediationMolocoAdapter'
end

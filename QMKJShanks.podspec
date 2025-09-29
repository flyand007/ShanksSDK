Pod::Spec.new do |s|
  s.name             = 'QMKJShanks'
  s.version          = '1.1.6'
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
    :http => 'https://github.com/flyand007/ShanksSDK/releases/download/1.1.6/QMKJShanks_Package.zip'
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
  s.dependency 'Google-Mobile-Ads-SDK',' ~> 12.1.0'
  s.dependency 'FirebaseRemoteConfig'
  s.dependency 'SVProgressHUD'
  s.dependency 'SensorsAnalyticsSDK'
  s.dependency 'SnapKit'
  s.dependency 'FBSDKCoreKit'
  s.dependency 'AppsFlyer-AdRevenue'
  s.dependency 'GoogleUserMessagingPlatform','~> 3.0.0'
  s.dependency 'com_huntmobi_web2app'
  s.dependency 'GoogleMobileAdsMediationFacebook', '~> 6.17.1.0'
  s.dependency 'GoogleMobileAdsMediationAppLovin', '~> 13.1.0.0'
  s.dependency 'GoogleMobileAdsMediationVungle', '~> 7.4.5.0'
  s.dependency 'GoogleMobileAdsMediationUnity', '~> 4.14.0.0'
  s.dependency 'bigo-ads-admob-adapter','~> 4.6.0.0'
  s.dependency 'GoogleMobileAdsMediationPangle', '~> 7.4.1.0.0'
  s.dependency 'GoogleMobileAdsMediationMintegral', '~> 7.7.7.0'
  s.dependency 'GoogleMobileAdsMediationIronSource', '~>8.8.0.0.0'
  s.dependency 'AppLovinMediationGoogleAdapter','~> 12.1.0'
  s.dependency 'AppLovinMediationMintegralAdapter','~> 7.7.7.0.0'
  s.dependency 'AppLovinMediationUnityAdsAdapter', '~> 4.14.0.0'
  s.dependency 'AppLovinMediationVungleAdapter', '~> 7.4.5.0'
  s.dependency 'AppLovinMediationFacebookAdapter', '~> 6.17.1.0'
  s.dependency 'AppLovinMediationBigoAdsAdapter', '~> 4.6.0.0'
  s.dependency 'AppLovinMediationFyberAdapter', '~> 8.3.5.1'
  s.dependency 'AppLovinMediationIronSourceAdapter', '~> 8.8.0.0.0'
end

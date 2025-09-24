#
# Be sure to run `pod lib lint Panther.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ShanksLib'
  s.version          = '0.1.0'
  s.summary          = 'ShanksLib binary distribution'
  s.description      = <<-DESC
    ShanksLib 是一个闭源 Framework，提供 XXX 功能。
  DESC
  s.homepage         = 'https://github.com/你的用户名/ShanksLib'
  s.license          = { :type => 'Commercial', :text => 'Proprietary software' }
  s.author           = { 'Your Name' => 'your@email.com' }

  # 二进制文件下载地址
  s.source           = {
    :http => 'https://github.com/你的用户名/ShanksLib/releases/download/0.1.0/ShanksLib.framework.zip'
  }

  s.ios.deployment_target = '11.0'

  # 告诉 CocoaPods 引入 vendored framework
  s.vendored_frameworks = 'ShanksLib.framework'
end

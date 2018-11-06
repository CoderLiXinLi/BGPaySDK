#
# Be sure to run `pod lib lint BGPaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BGPaySDK'
  s.version          = '1.0.0'
  s.summary          = 'BGPay支付SDK'
  s.swift_version =  '4.1'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
集成BGPaySDK 可以 调起 BG 客户端 进行对应币种支付
                       DESC

  s.homepage         = 'https://github.com/CoderLiXinLi/BGPaySDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CoderLiXinLi' => 'lixinli0327@gmail.com' }
  s.source           = { :git => 'https://github.com/CoderLiXinLi/BGPaySDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.vendored_framework = 'BGPaySDK/Products/BGPay.framework'
  
  # s.resource_bundles = {
  #   'BGPaySDK' => ['BGPaySDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Alamofire', '4.7.1'
  s.dependency 'CryptoSwift', '0.9.0'
end

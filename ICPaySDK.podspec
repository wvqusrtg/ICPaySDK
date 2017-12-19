
Pod::Spec.new do |s|
  s.name             = 'ICPaySDK'
  s.version          = '1.0.1'
  s.summary          = 'ICPaySDK is an unique sdk to pay'

  s.description  = "ICPaySDK = wxpay + alipay. the api is unique"


  s.homepage         = 'https://github.com/CorkiiOS/ICPaySDK'

  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'corkiios' => '675053587@qq.com' }
  s.source           = { :git => 'https://github.com/CorkiiOS/ICPaySDK.git', :tag => s.version.to_s }

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ICPaySDK/Classes/**/*'


  # s.resource_bundles = {
  #   'ICPaySDK' => ['ICPaySDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

s.subspec 'ICPayManager' do |mgr|

mgr.source_files = 'ICPaySDK/Classes/IC{Error,IAliModel,IWxModel,MessageModel,PayDesignManager,PaySDKCommon,BasePayFactory,IPay}.{h,m}'

end

s.subspec 'ICAliPay' do |ali|

ali.dependency 'ICPaySDK/ICPayManager'
ali.dependency 'AliPay_SDK'
ali.source_files = 'ICPaySDK/Classes/ICAliPayFactory.{h,m}'

end

s.subspec 'ICWxPay' do |wx|

wx.dependency 'ICPaySDK/ICPayManager'
wx.dependency 'WechatOpenSDK'
wx.source_files = 'ICPaySDK/Classes/ICWxPayFactory.{h,m}'

end

end

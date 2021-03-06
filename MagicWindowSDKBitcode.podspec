Pod::Spec.new do |s|

  s.name         = "MagicWindowSDKBitcode"
  s.version      = "3.90.170116"
  s.summary      = "MagicWindowSDK for Cocoapods convenience."
  s.homepage     = "http://magicwindow.cn/"
  s.license      = "MIT"
  s.author       = { "MagicWindow" => "support@magicwindow.cn" }
  s.source       = { :git => "https://github.com/magicwindow/mw-iossdk.git", :tag => "#{s.version}" }
  s.platform     = :ios, "7.0"
  s.requires_arc = true
s.source_files = "MagicWindowSDK/MagicWindowSDKBitcode/*.{h,m}"
s.public_header_files = "MagicWindowSDK/MagicWindowSDKBitcode/*.h"
s.resource     = "MagicWindowSDK/MagicWindowSDKBitcode/MagicWindow.bundle"
s.preserve_paths = "MagicWindowSDK/MagicWindowSDKBitcode/libMagicWindowSDK.a"
s.vendored_libraries = "MagicWindowSDK/MagicWindowSDKBitcode/libMagicWindowSDK.a"
s.xcconfig = {
'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/MagicWindowSDK/MagicWindowSDKBitcode"',
'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/MagicWindowSDK/MagicWindowSDKBitcode"'
}
s.frameworks = "AdSupport","CoreTelephony","CoreGraphics","CoreFoundation","SystemConfiguration","CoreLocation","WebKit"

  # WeChat
  s.subspec 'WeChat' do |sp|
  sp.vendored_libraries = "MagicWindowSDK/WeChat/*.a"
  sp.source_files = "MagicWindowSDK/WeChat/*.{h,m}"
  sp.public_header_files = "MagicWindowSDK/WeChat/*.h"
  sp.frameworks = "CFNetwork","Security"
  sp.libraries = "sqlite3.0","c++","z"
  end

end

Pod::Spec.new do |s|

  s.name         = "MagicWindowSDK-noWXSDK"
  s.version      = "3.90.1701161"
  s.summary      = "MagicWindowSDK for Cocoapods convenience."
  s.homepage     = "http://magicwindow.cn/"
  s.license      = "MIT"
  s.author       = { "MagicWindow" => "support@magicwindow.cn" }
  s.source       = { :git => "https://github.com/ran354101066/mw-iossdk.git", :tag => "#{s.version}" }
  s.platform     = :ios, "7.0"
  s.requires_arc = true
s.source_files = "MagicWindowSDK/MagicWindowSDK/*.{h,m}"
s.public_header_files = "MagicWindowSDK/MagicWindowSDK/*.h"
s.resource     = "MagicWindowSDK/MagicWindowSDK/MagicWindow.bundle"
s.preserve_paths = "MagicWindowSDK/MagicWindowSDK/libMagicWindowSDK.a"
s.vendored_libraries = "MagicWindowSDK/MagicWindowSDK/libMagicWindowSDK.a"
s.xcconfig = {
'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/MagicWindowSDK/MagicWindowSDK"',
'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/MagicWindowSDK/MagicWindowSDK"'
}
s.frameworks = "AdSupport","CoreTelephony","CoreGraphics","CoreFoundation","SystemConfiguration","CoreLocation","WebKit"

  # WeChat
  #s.subspec 'WeChat' do |sp|
  #sp.vendored_libraries = "MagicWindowSDK/WeChat/*.a"
  #sp.source_files = "MagicWindowSDK/WeChat/*.{h,m}"
  #sp.public_header_files = "MagicWindowSDK/WeChat/*.h"
  #sp.frameworks = "CFNetwork","Security"
  #sp.libraries = "sqlite3.0","c++","z"
  #end

end

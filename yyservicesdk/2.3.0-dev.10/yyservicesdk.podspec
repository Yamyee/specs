Pod::Spec.new do |s|
  s.name         = 'yyservicesdk'
  s.version      = '2.3.0-dev.10'
  s.summary      = 'yyservicesdk'
  s.homepage     = 'http://sunclouds.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2018 YY Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'yypm@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyservicesdk/2.3.0-dev.10/yyservicesdk.zip" }
  s.default_subspec = 'yyservicesdk'
  s.subspec 'yyservicesdk' do |sw|
    sw.dependency 'openssl', '111.6721.0'
sw.dependency 'yyaccesstranssdk/yyaccesstranssdklib', '1.2.5'
    sw.requires_arc = true
    sw.frameworks = 'SystemConfiguration'
    sw.libraries = 'c++','z'
    sw.source_files = 'include/**/*.h'
    sw.ios.vendored_library = 'libs/libyyservicesdk.a'
  end
  s.subspec 'yyservicesdk-dynamic' do |sx|
    sx.dependency 'openssl', '111.6721.0'
sx.dependency 'yyaccesstranssdk/yyaccesstranssdklib', '1.2.5'
    sx.requires_arc = true
    sx.frameworks = 'SystemConfiguration'
    sx.libraries = 'c++','z'
    sx.source_files = 'include/**/*.h'
    sx.ios.vendored_frameworks = 'libs/yyservicesdk_dynamic.framework'
  end
end

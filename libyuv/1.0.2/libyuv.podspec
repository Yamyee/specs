Pod::Spec.new do |s|

	s.name         = "libyuv"
	s.version      = "1.0.2"
	s.summary      = "Open libyuv library for yysdk."
	s.homepage     = "http://libyuv.googlecode.com/svn/trunk/"
	s.license      = {:type => 'BSD'}
	s.author       = { "Zhangjunhai1" => "zhangjunhai1@yy.com" }

	s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/libyuv/1.0.2/libyuv.zip"}

	s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/libyuv/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/libyuv/libs" }

	s.source_files		= 'include/**/*.h','include/*.h'
	s.header_mappings_dir = 'include'
	s.vendored_library = 'libs/libyuv.a'
	s.library = 'yuv'
end
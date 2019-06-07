Pod::Spec.new do |s|

	s.name         = "ffmpeg"
	s.version      = "332170717.6519.0"
	s.summary      = "A iOS perbuilt lib for ffmpeg."
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://www.ffmpeg.org/"

	s.author       = { "Liu Qing" => "liuqing@yy.com", "Zhang JunHai1" => "zhangjunhai1@yy.com",  "Dang ZhengJun" => "dangzhengjun@yy.com" }

	s.source       = {:http => "http://cirepo.bs2dl.yy.com/sdks/ios/ffmpeg/332170717.6519.0/ffmpeg.zip"}

	s.default_subspec = 'ffmpeg-0.8.7'

	s.subspec 'ffmpeg-0.8.7' do |ss|
    		ss.preserve_paths = 'libs/**/*.a'
	  	ss.libraries = 'x264', 'avcodec',  'avformat', 'avutil', 'swscale'
	end

	s.subspec 'ffmpeg-ac' do |ss|
		ss.header_mappings_dir = 'include'
		ss.vendored_libraries = 'libs/**/*.a'
		ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale'
	end
	s.subspec 'ffmpeg-271-ios' do |ss|
		ss.header_mappings_dir = 'include'
		ss.vendored_libraries = 'libs/**/*.a'
		ss.libraries = 'x264', 'yympeg'
	end
	s.subspec 'ffmpeg-271-x264optim' do |ss|
		ss.header_mappings_dir = 'include'
		ss.vendored_libraries = 'libs/**/*.a'
		ss.libraries = 'x264', 'yympeg'
	end
	s.subspec 'ffmpeg-332-ios' do |ss|
        ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ffmpeg/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/ffmpeg/libs" }
		ss.header_mappings_dir = 'include'
		ss.vendored_libraries = 'libs/**/*.a'
		ss.libraries = 'x264', 'yympeg'
	end	
	s.subspec 'ffmpeg-332-ios-dylib' do |ss|
		ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ffmpeg/include', 'LD_RUNPATH_SEARCH_PATHS' => "@loader_path/Frameworks" }
		ss.header_mappings_dir = 'include'
		ss.vendored_libraries = 'libs/**/*.dylib'
		ss.libraries = 'ffmpeg-neon'
	end
end

Pod::Spec.new do |s|
	s.name         = 'stmobile'
	s.version      = '1.4.2'
	s.summary      = 'stmobile'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/stmobile/1.4.2/stmobile.zip" }
	s.platform     = :ios, '4.3'
    s.ios.deployment_target = '4.3'
    s.requires_arc = true

    s.default_subspec = 'stmobile'
	s.subspec 'stmobile' do |ss|
		ss.preserve_paths  = 'libs/**/*.framework'
		ss.ios.vendored_frameworks = 'libs/*.framework'
		ss.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
	end

	s.subspec 'stmobilestatic' do |sz|
    	sz.resource = 'resource/stmobilestatic/stmobile.bundle'
		sz.vendored_library = 'libs/libstmobilestatic.a'
		sz.library = 'stmobilestatic'
		sz.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/stmobile/libs"' }
	end
end

Pod::Spec.new do |s|
	s.name 			= 'gslbsdki'
	s.version 		= '1.3.2'
	s.summary 		= 'smart dns for security'
	s.author 		= {'zhaoding' => 'zhaoding@yy.com'}
	s.homepage 		= 'https://aq.yy.com'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2013 YY Inc., Allrights reserved.
		LICENSE
	}
	s.source 		= {:http => "http://cirepo.bs2dl.yy.com/sdks/ios/gslbsdki/1.3.2/gslbsdki.zip"}

	s.default_subspec = 'gslbsdki'
	s.subspec 'gslbsdki' do |ss|
		ss.header_mappings_dir = 'include'
		ss.vendored_library = 'libs/libgslbsdki.a'
    	ss.library = 'gslbsdki'
    	ss.dependency 'FMDB'
    	ss.dependency 'CocoaAsyncSocket'
    	ss.dependency 'AFNetworking'
    	ss.libraries = 'stdc++', 'resolv'
		ss.ios.deployment_target	= '6.0'
		ss.requires_arc	= true
		ss.xcconfig   = { 
	    	'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/gslbsdki/libs"
		}
	end
	s.subspec 'dynamic' do |sx|
		sx.xcconfig   = {
	    	'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'
		}
		sx.ios.deployment_target	= '6.0'
	    sx.header_mappings_dir = 'include'
	    sx.dependency 'FMDB'
    	sx.dependency 'CocoaAsyncSocket'
    	sx.dependency 'AFNetworking'
    	sx.libraries = 'stdc++', 'resolv'
    	sx.ios.vendored_frameworks = 'libs/gslbsdki.framework'
	end
	
end

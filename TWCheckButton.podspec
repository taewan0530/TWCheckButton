Pod::Spec.new do |s|
  s.name = 'TWCheckButton'
  s.version = '0.0.1'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'check or radio group'
  s.homepage = 'http://github.com/taewan0530'
  s.social_media_url = 'http://github.com/taewan0530'
  s.author = { 'taewan' => 'taewan0530@daum.net' }
  s.source = { :git => 'https://github.com/taewan0530/TWCheckButton.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = 'TWCheckButton.swift'
end
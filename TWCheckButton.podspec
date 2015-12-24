Pod::Spec.new do |s|
  s.name = 'TWCheckButton'
  s.version = '1.0.0'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'check or radio group'
  s.homepage = 'http://github.com/taewan0530'
  s.social_media_url = 'http://github.com/taewan0530'
  s.authors = { 'taewan' => 'taewan0530@daum.net' }
  s.source = { :git => 'https://github.com/taewan0530/TWCheckButton.git', :tag => s.version.to_s }
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.source_files = 'TWCheckButton.swift'
end
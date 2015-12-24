Pod::Spec.new do |s|
  s.name = 'TWCheckButton'
  s.version = '1.0.0'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'check or radio group'
  s.homepage = 'https://github.com/taewan0530/TWCheckButton.git'
  s.authors = { 'taewan.kim' => 'taewan0530@daum.net' }
  s.source = { :git => 'https://github.com/taewan0530/TWCheckButton.git', :tag => s.version.to_s }
  s.requires_arc = true

  s.ios.deployment_target = '8.0'

  s.source_files = 'TWCheckButton.swift'
end

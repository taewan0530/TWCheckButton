Pod::Spec.new do |spec|
  spec.name         = 'TWCheckButton'
  spec.version      = '0.0.2'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage     = 'http://github.com/taewan0530'
  spec.authors      = { 'taewan' => 'taewan0530@daum.net' }
  spec.summary      = 'check or radio group'
  spec.source       = { :git => 'https://github.com/taewan0530/TWCheckButton.git', :tag => spec.version.to_s }
  spec.source_files = 'TWCheckButton.swift'
 
  spec.ios.deployment_target = '8.0'
  spec.requires_arc = true
end

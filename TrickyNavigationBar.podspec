Pod::Spec.new do |s|
  s.name             = 'TrickyNavigationBar'
  s.version          = '0.1.0'
  s.summary          = 'UINavigationBar Extension which allows you to change its appearance dynamically'
  s.homepage         = 'https://github.com/itanchao/TrickyNavigationBar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'itanchao' => 'itanchao@gmail.com' }
  s.source           = { :git => 'https://github.com/itanchao/TrickyNavigationBar.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ianyujin'
  s.ios.deployment_target = '9.0'
  s.source_files = 'TrickyNavigationBar/Classes/**/*'
end

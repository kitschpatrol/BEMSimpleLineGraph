Pod::Spec.new do |s|
  s.name             = "BEMSimpleLineGraph"
  s.version          = "2.3"
  s.source       = { :git => 'https://github.com/Boris-Em/BEMSimpleLineGraph.git', :tag => 'v2.3' }  
  s.summary          = "iOS library to create simple line graphs/charts (charting library)."
  s.homepage         = "https://github.com/Boris-Em/BEMSimpleLineGraph"
  s.license          = 'MIT'
  s.author           = { "Boris Emorine" => "boris.emorine@gmail.com" }
  s.social_media_url = 'https://twitter.com/kitschpatrol'
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.source_files = ['Classes', 'Classes/*.{h,m}']
  s.screenshots = ["http://img843.imageshack.us/img843/3821/ru8f.png", "http://img30.imageshack.us/img30/4479/gt3s.png"]
end

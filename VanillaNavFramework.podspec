Pod::Spec.new do |s|

  s.name         = "VanillaNavFramework"
  s.version      = "0.1.0"
  s.summary      = "A short description of VanillaNavFramework."
  s.requires_arc = true

  s.homepage     = "http://vanillanav.com"


  s.license      = 'MIT'


  s.author       = { "Dn" => "d.danilov@rosoftlab.net" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/vanillanav/VanillaNav-ios-framework.git", :tag => "1.0.0" }

  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'VanillaNavFramework.framework'
  #s.module_map = 'VanillaNavFramework/module.modulemap'

  s.subspec "VanillaNavFramework" do  |spec|
  spec.dependency "OpenCV", "2.4.9"
  spec.dependency "Alamofire" , "~> 4.4.0"
  spec.dependency "ObjectMapper", "2.2.6"
  spec.dependency "RxAlamofire", "3.0.2"
  spec.dependency "AlamofireImage", "3.2.0"
  spec.dependency "RxSwift", "3.4.1"
  spec.dependency "SugarRecord/Realm", "3.0.0"    
  end
end

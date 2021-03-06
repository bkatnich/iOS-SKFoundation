Pod::Spec.new do |s|
  s.name             = "SandKattFoundation"
  s.version          = "0.5.4"
  s.summary          = "The central foundation library of the SandKatt iOS pluggable platform."

  s.description      = <<-DESC
Thia is the central foundation library of the SandKatt iOS pluggable platform.
                       DESC

  s.homepage         = "https://github.com/bkatnich/iOS-SKFoundation"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Britton Katnich" => "katnich@shaw.ca" }
  s.source           = { :git => "https://github.com/bkatnich/iOS-SKFoundation.git", :tag => s.version.to_s }

  s.ios.deployment_target = "11.0"
  s.source_files = "SKFoundation/**/*"

  s.swift_version = "4.1"

  s.dependency "Alamofire"
  s.dependency "FontAwesome.swift"
  s.dependency "SwiftyBeaver"
  
end

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-panorama-view"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]
  s.platform     = :ios, "10.0"

  s.source       = { :git => "https://github.com/daviseares/react-native-panorama.git", :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m,swift}"

  s.swift_version = '5.3'

  s.frameworks = 'UIKit'
  s.dependency "React"
end


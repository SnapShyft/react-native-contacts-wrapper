require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = "RCTContactsWrapper"
  s.version      = package['version']
  s.summary        = "![alt tag](https://github.com/LynxITDigital/Screenshots/blob/master/RN%20Contacts%20Wrapper%20example.gif)."
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/LynxITDigital/react-native-contacts-wrapper.git", :tag => "v#{s.version}" }
  s.source_files  = 'ios/RCTContactsWrapper/*.{h,m}'
  s.preserve_paths = "**/*.js"

  s.dependency 'React'
end
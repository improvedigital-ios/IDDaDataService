#
# Be sure to run `pod lib lint IDDaDataService.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IDDaDataService'
  s.version          = '0.1.2'
  s.summary          = 'IDDaDataService'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Detailed description...'
  s.homepage         = 'https://github.com/improvedigital-ios/IDDaDataService'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andrey Bronnikov' => 'brand_nsk@mail.ru' }
  s.source           = { :git => 'https://github.com/improvedigital-ios/IDDaDataService.git', :branch => "master" }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Classes/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.dependency 'ReactiveObjC'
  s.dependency 'JSONModel'
  s.dependency 'AFNetworking'

end

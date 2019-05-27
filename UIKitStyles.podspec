#
#  Be sure to run `pod spec lint UIKitStyles.podspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |s|

	s.platform     = :ios, "9.0"
  	s.name         	= "UIKitStyles"
  	s.version      	= "0.0.1"
  	s.summary     	= "A frame work that organizes the styling attributes for all UIKit objects."
  	s.description 	= "A frame work that organizes the styling attributes for all UIKit objects."
  	s.homepage    	= "https://github.com/TerrickMansur/UIKitStyles"
  	s.license     	= "MIT"
  # s.license 		= { :type => "MIT", :file => "FILE_LICENSE" }
  	s.author        = { "Terrick Mansur" => "terrickmansur@gmail.com" }
  	s.source 		= { :git => "https://github.com/TerrickMansur/UIKitStyles.git", :tag => "#{s.version}" }
  	s.source_files = "UIKitStyles/**/*.{h,m,swift}"

end

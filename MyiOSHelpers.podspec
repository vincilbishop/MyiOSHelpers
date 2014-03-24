Pod::Spec.new do |spec|

	spec.name		= 'MyiOSHelpers'
	spec.version	= '1.0.0'
	spec.homepage   = "http://github.com/premosystems/MyiOSHelpers"
	spec.author     = { "Vincil Bishop" => "vincil.bishop@vbishop.com" }
	spec.license	= 'MIT'
	spec.summary	= 'A collection of often used but time consuming to recreate logic for iOS.'
	spec.source	= { :git => 'https://github.com/premosystems/MyiOSHelpers.git', :tag => spec.version.to_s }
	spec.requires_arc = true

	spec.ios.deployment_target = '7.0'

	spec.resource = 'MyiOSHelpers.podspec'

	spec.source_files = 'MyiOSHelpers/*.{h,m}'
  
	spec.subspec "Logic" do |logic|
		# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
		logic.source_files = 'MyiOSHelpers/Logic/*.{h,m}'
		# subspec.ios.dependency ''
		# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
		# subspec.ios.framework = 'AssetsLibrary'
	
		logic.subspec "ThirdPartyHelpers" do |third_party|
			# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
			third_party.source_files = 'MyiOSHelpers/Logic/ThirdPartyHelpers/*.h'
			# subspec.ios.dependency ''
			# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
			# subspec.ios.framework = 'AssetsLibrary'
			
			third_party.subspec "CoreLocation" do |cl|
				# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
				cl.source_files = 'MyiOSHelpers/Logic/ThirdPartyHelpers/CoreLocation/*.{h,m}'
				cl.ios.framework = 'CoreLocation'
				cl.ios.dependency 'MyiOSHelpers/Logic/Blocks'
				cl.ios.dependency 'MyiOSHelpers/Logic/Categories'
				cl.ios.dependency 'MyiOSHelpers/Logic/Common'
				# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
				# subspec.ios.framework = 'AssetsLibrary'
			end
			
			third_party.subspec "CoreBluetooth" do |cb|
				# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
				cb.source_files = 'MyiOSHelpers/Logic/ThirdPartyHelpers/CoreBluetooth/*.{h,m}'
				cb.ios.framework = 'CoreBluetooth'
				cb.ios.dependency 'MyiOSHelpers/Logic/Blocks'
				cb.ios.dependency 'MyiOSHelpers/Logic/Categories'
				cb.ios.dependency 'MyiOSHelpers/Logic/Common'
				# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
				# subspec.ios.framework = 'AssetsLibrary'
			end
			
			third_party.subspec "MongoDB" do |mongo|
				# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
				mongo.source_files = 'MyiOSHelpers/Logic/ThirdPartyHelpers/Mongo/*.{h,m}'
				mongo.ios.dependency 'MyiOSHelpers/Logic/ThirdPartyHelpers/KeyValueObjectMapping'
				
				# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
				# subspec.ios.framework = 'AssetsLibrary'
			end # Logic/Blocks
			
			third_party.subspec "KeyValueObjectMapping" do |kvom|
				# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
				kvom.source_files = 'MyiOSHelpers/Logic/ThirdPartyHelpers/KeyValueObjectMapping/*.{h,m}'
				kvom.ios.dependency 'DCKeyValueObjectMapping', '~>1.4.0'
				# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
				# subspec.ios.framework = 'AssetsLibrary'
			end # Logic/Blocks
			
			third_party.subspec "Twilio" do |twilio|
				twilio.source_files = 'MyiOSHelpers/Logic/ThirdPartyHelpers/Twilio/*.{h,m}'
				twilio.prefix_header_contents = '#import "TwilioClient.h"'
				twilio.ios.dependency 'MyiOSHelpers/Logic/Common'
				twilio.dependency 'TwilioSDK'
			end
			
		end # Logic/Blocks
	
		logic.subspec "Blocks" do |blocks|
			# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
			blocks.source_files = 'MyiOSHelpers/Logic/Blocks/*.h'
			# subspec.ios.dependency ''
			# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
			# subspec.ios.framework = 'AssetsLibrary'
		end # Logic/Blocks
	
		logic.subspec "Categories" do |logic_categories|
			# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
			logic_categories.source_files = 'MyiOSHelpers/Logic/Categories/*.{h,m}'
			# subspec.ios.dependency ''
			# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
			# subspec.ios.framework = 'AssetsLibrary'
		end # Logic/Categories
	
		logic.subspec "Common" do |common_logic|
			common_logic.source_files = 'MyiOSHelpers/Logic/Common/*.{h,m}'
			common_logic.ios.dependency 'CocoaLumberjack', '~>1.8.1'
			# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
			# subspec.ios.framework = 'AssetsLibrary'
			
			common_logic.subspec "LumberjackHelpers" do |lumberjack_helpers|
				lumberjack_helpers.ios.dependency 'LumberjackPrettyClassInformation', '~>1.0.0'
				lumberjack_helpers.prefix_header_contents = 	'#import "Lumberjack-Default-Log-Level.h"', 
																'#import "PrettyClassInformationLogFormatter.h"'
				lumberjack_helpers.source_files = 'MyiOSHelpers/Logic/Common/LumberjackHelpers/*.{h,m}'
			end
		end # Logic/Common
		
	end # Logic 
  
	spec.subspec "View" do |view|
		# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
		view.source_files = 'MyiOSHelpers/View/*.{h,m}'
		# subspec.ios.dependency ''
		# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
		# subspec.ios.framework = 'AssetsLibrary'
		
		view.subspec "Screens" do |screens|
			# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
			screens.source_files = 'MyiOSHelpers/View/Screens/*.{h,m}'
			# subspec.ios.dependency ''
			# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
			# subspec.ios.framework = 'AssetsLibrary'
			screens.subspec "Drawers" do |drawers|
				drawers.prefix_header_contents = 	'#import "MMDrawerController.h"',
    											 	'#import "MMDrawerBarButtonItem.h"',
    												'#import "UIViewController+MMDrawerController.h"'
				drawers.source_files = 'MyiOSHelpers/View/Screens/Drawers/*.{h,m}'
				drawers.ios.dependency 'MMDrawerController', '~> 0.5.2'
				# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
				# subspec.ios.framework = 'AssetsLibrary'
			end # View/Screens
			
			screens.subspec "FormViewController" do |form|
				form.source_files = 'MyiOSHelpers/View/Screens/FormViewController/*.{h,m}'
				form.ios.dependency 'RDVKeyboardAvoiding', '~>1.1.0'
				form.ios.dependency 'US2FormValidator', '~> 1.1.2'
				form.ios.dependency 'MyiOSHelpers/Logic/Blocks'
				form.ios.dependency 'MyiOSHelpers/View/Categories'
				# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
				# subspec.ios.framework = 'AssetsLibrary'
			end # View/Screens
			
			screens.subspec "LoginViewController" do |login|
				login.source_files = 'MyiOSHelpers/View/Screens/LoginViewController/*.{h,m}'
				login.ios.dependency 'MyiOSHelpers/View/Screens/FormViewController'
				login.ios.dependency 'MBProgressHUD', '~>0.8'
			end # View/Screens
			
		end # View/Screens

		view.subspec "Categories" do |view_categories|
			# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
			view_categories.source_files = 'MyiOSHelpers/View/Categories/*.{h,m}'
			# subspec.ios.dependency ''
			# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
			# subspec.ios.framework = 'AssetsLibrary'
		end # Categories subspec2

	end # View
  
end # spec
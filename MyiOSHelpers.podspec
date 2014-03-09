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
  
	spec.subspec "Logic" do |subspec|
		# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
		subspec.source_files = 'MyiOSHelpers/Logic/*.{h,m}'
		# subspec.ios.dependency ''
		# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
		# subspec.ios.framework = 'AssetsLibrary'
	
		subspec.subspec "Categories" do |subspec2|
			# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
			subspec2.source_files = 'MyiOSHelpers/Logic/Categories/*.{h,m}'
			# subspec.ios.dependency ''
			# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
			# subspec.ios.framework = 'AssetsLibrary'
		end # Categories subspec2
	
		subspec.subspec "Common" do |subspec2|
			# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
			subspec2.source_files = 'MyiOSHelpers/Logic/Common/*.{h,m}'
			# subspec.ios.dependency ''
			# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
			# subspec.ios.framework = 'AssetsLibrary'
		end # Logic/Common subspec2
		
		subspec.subspec "Blocks" do |subspec2|
			# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
			subspec2.source_files = 'MyiOSHelpers/Logic/Blocks/*.{h,m}'
			# subspec.ios.dependency ''
			# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
			# subspec.ios.framework = 'AssetsLibrary'
		end # Logic/Blocks subspec2
	
	end # Logic subspec
  
	spec.subspec "View" do |subspec|
		# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
		subspec.source_files = 'MyiOSHelpers/View/*.{h,m}'
		# subspec.ios.dependency ''
		# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
		# subspec.ios.framework = 'AssetsLibrary'
		
		subspec.subspec "Screens" do |subspec2|
			# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
			subspec2.source_files = 'MyiOSHelpers/View/Screens/*.{h,m}'
			# subspec.ios.dependency ''
			# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
			# subspec.ios.framework = 'AssetsLibrary'
		end # Screens subspec2

		subspec.subspec "Categories" do |subspec2|
			# subspec.prefix_header_contents = '#import "HeaderFiles.h"'
			subspec2.source_files = 'MyiOSHelpers/View/Categories/*.{h,m}'
			# subspec.ios.dependency ''
			# subspec.ios.resource_bundle = { 'BundleName' => 'Path/To/Resources/**/*.*' }
			# subspec.ios.framework = 'AssetsLibrary'
		end # Categories subspec2

	end # View subspec
  
end # spec
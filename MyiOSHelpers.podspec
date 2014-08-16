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
    
    spec.dependency 'DateTools', '~>1.3'
    spec.dependency 'MTDates', '~>0.12'
    spec.dependency 'Underscore.m', '~>0.2'
    
    spec.prefix_header_contents = '#import "Underscore.h"', '#ifndef _', '#define _ Underscore', '#endif', '#import "DateTools.h"', '#ifndef MTDATES_NO_PREFIX', '#define MTDATES_NO_PREFIX 1', '#endif', '#import "NSDate+MTDates.h"'
    
	spec.subspec "Logic" do |logic|
		logic.source_files = 'MyiOSHelpers/Logic/*.{h,m}'
     	
        logic.subspec "Apple" do |apple|
			apple.source_files = 'MyiOSHelpers/Logic/Apple/*.h'
            
            apple.subspec "CoreData" do |cd|
				cd.source_files = 'MyiOSHelpers/Logic/Apple/CoreData/*.{h,m}'
				cd.ios.framework = 'CoreData'
				cd.ios.dependency 'MyiOSHelpers/Logic/Blocks', spec.version.to_s
				cd.ios.dependency 'MyiOSHelpers/Logic/Categories', spec.version.to_s
                cd.ios.dependency 'MyiOSHelpers/Logic/ThirdPartyHelpers/KeyValueObjectMapping', spec.version.to_s
			end
            
			apple.subspec "CoreLocation" do |cl|
				cl.source_files = 'MyiOSHelpers/Logic/Apple/CoreLocation/*.{h,m}'
				cl.ios.framework = 'CoreLocation'
				cl.ios.dependency 'MyiOSHelpers/Logic/Blocks', spec.version.to_s
				cl.ios.dependency 'MyiOSHelpers/Logic/Categories', spec.version.to_s
				cl.ios.dependency 'MyiOSHelpers/Logic/ThirdPartyHelpers/CocoaLumberjack', spec.version.to_s
                cl.ios.dependency 'NSTimer-Blocks', '~>0.0.1'
			end
			
			apple.subspec "CoreBluetooth" do |cb|
				cb.source_files = 'MyiOSHelpers/Logic/Apple/CoreBluetooth/*.{h,m}'
				cb.ios.framework = 'CoreBluetooth'
                cb.prefix_header_contents = 	'#import "Lumberjack-Default-Log-Level.h"',
                '#import "PrettyClassInformationLogFormatter.h"'
				cb.ios.dependency 'MyiOSHelpers/Logic/Blocks', spec.version.to_s
				cb.ios.dependency 'MyiOSHelpers/Logic/Categories', spec.version.to_s
				cb.ios.dependency 'MyiOSHelpers/Logic/ThirdPartyHelpers/CocoaLumberjack', spec.version.to_s
			end
        end
        
		logic.subspec "Blocks" do |blocks|
			blocks.source_files = 'MyiOSHelpers/Logic/Blocks/*.h'
		end
        
		logic.subspec "Categories" do |logic_categories|
			logic_categories.source_files = 'MyiOSHelpers/Logic/Categories/*.{h,m}'
            logic_categories.dependency 'NSDate+Helper', '~>0.0.1'
            
            categoriesArray = ["NSArray","NSData","NSDate","NSDictionary","NSError","NSNull","NSNumber","NSOperationQueue","NSRunLoop","NSString","UIApplication","UIDevice"]
            
            for category in categoriesArray
                logic_categories.subspec category do |cat|
                    cat.source_files = "MyiOSHelpers/Logic/Categories/#{category}/*.{h,m}"
                    cat.prefix_header_contents = 	'#import "Lumberjack-Default-Log-Level.h"',
                    '#import "PrettyClassInformationLogFormatter.h"'
                    cat.dependency 'MyiOSHelpers/Logic/ThirdPartyHelpers/CocoaLumberjack', spec.version.to_s
                end
            end
            
            logic_categories.subspec "NSObject" do |nsobject|
                nsobject.source_files = "MyiOSHelpers/Logic/Categories/NSObject/*.{h,m}"
                nsobject.dependency 'MyiOSHelpers/Logic/Categories/NSDictionary', spec.version.to_s
            end
		end
        
        logic.subspec "ThirdPartyHelpers" do |third_party|
			third_party.source_files = 'MyiOSHelpers/Logic/ThirdPartyHelpers/*.h'

            third_party.subspec "KeyValueObjectMapping" do |kvom|
				kvom.source_files = 'MyiOSHelpers/Logic/ThirdPartyHelpers/KeyValueObjectMapping/*.{h,m}'
				kvom.ios.dependency 'DCKeyValueObjectMapping', '~>1.4'
                kvom.ios.dependency 'NSObject-ObjectMap', '~>2.1'
            end
            
			third_party.subspec "MongoDB" do |mongo|
				mongo.source_files = 'MyiOSHelpers/Logic/ThirdPartyHelpers/Mongo/*.{h,m}'
				mongo.ios.dependency 'MyiOSHelpers/Logic/ThirdPartyHelpers/KeyValueObjectMapping'
                mongo.prefix_header_contents = '#import "Underscore.h"', '#ifndef _', '#define _ Underscore', '#endif'
				mongo.ios.dependency 'NSObject-ObjectMap', '~>2.2'
                mongo.ios.dependency  'Underscore.m', '~>0.2.1'
			end
            
            third_party.subspec "CocoaLumberjack" do |lumberjack|
            	lumberjack.ios.dependency 'CocoaLumberjack' # , '~>1.8.1'
				lumberjack.ios.dependency 'LumberjackPrettyClassInformation', '~>1.0'
				lumberjack.prefix_header_contents = 	'#import "Lumberjack-Default-Log-Level.h"',
                '#import "PrettyClassInformationLogFormatter.h"'
				lumberjack.source_files = 'MyiOSHelpers/Logic/ThirdPartyHelpers/CocoaLumberjack/*.{h,m}'
				
			end
            
            third_party.subspec "ReactiveCocoa" do |reactive|
				reactive.source_files = 'MyiOSHelpers/Logic/ThirdPartyHelpers/ReactiveCocoa/*.{h,m}'
                reactive.ios.dependency 'MyiOSHelpers/Logic/Blocks', spec.version.to_s
                reactive.ios.dependency 'ReactiveCocoa', '~>2.3'
            end
            
		end
	end
end
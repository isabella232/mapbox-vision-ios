Pod::Spec.new do |s|

  s.name         = "MapboxVisionSafety"
  s.version      = "0.14.0"

  s.summary      = "Safety features on top of Vision"
  s.description  = <<-DESC
                   Safety features on top of Vision
                   DESC

  s.homepage          = 'https://www.mapbox.com/vision/'
  s.documentation_url = 'https://docs.mapbox.com/ios/vision/'
  s.license           = { :type => "CUSTOM", :file => "Docs/LICENSE.md" }
  s.author            = { 'Mapbox' => 'mobile@mapbox.com' }
  s.social_media_url  = 'https://twitter.com/mapbox'
  s.documentation_url = 'https://www.mapbox.com/vision/'

  s.platform              = :ios
  s.ios.deployment_target = '11.2'

  s.source        = { :git => "https://github.com/mapbox/mapbox-vision-ios.git", :tag => "v#{s.version}" }

  s.source_files  = "MapboxVisionSafety/**/*.{swift,h,metal}"

  s.requires_arc = true

  s.swift_version = '4.2'

  s.dependency "MapboxVisionNativeAll/Safety", "#{s.version}"
  s.dependency "MapboxVision", "#{s.version}"
  
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => '$(EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_$(EFFECTIVE_PLATFORM_SUFFIX)__NATIVE_ARCH_64_BIT_$(NATIVE_ARCH_64_BIT)__XCODE_$(XCODE_VERSION_MAJOR))',
    'EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_simulator__NATIVE_ARCH_64_BIT_x86_64__XCODE_1200' => 'arm64 arm64e armv7 armv7s armv6 armv8'
  }

end

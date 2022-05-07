Pod::Spec.new do |s|
  s.name             = 'SwiftObjcFramework'
  s.version          = '1.0.0'

  s.summary          = 'SwiftObjcFramework'
  s.description      = <<-DESC
  SwiftObjcFramework.
                       DESC

  git_url = 'https://github.com/soumyamahunt/CombinedSwiftObjCConditionalCompilation'
  s.homepage         = git_url
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'devsoumyamahunt@gmail.com'
  s.source           = { :git => "#{git_url}.git", :branch => 'main' }

  s.platform = :ios
  s.ios.deployment_target = '12.0'
  s.swift_version = '4.0', '5.0'
  s.static_framework = true
  s.module_map = false

  s.default_subspecs = 'Swift'
  s.subspec 'Swift' do |ss|
    ss.source_files = 'SwiftObjcFramework/**/*.swift'
    ss.prefix_header_file = 'SwiftObjcFramework/SwiftObjcFramework-Prefix.pch'
  end

  s.subspec 'ObjC' do |ss|
    ss.source_files = 'SwiftObjcFramework/**/*.{h,m}'
    ss.requires_arc = 'SwiftObjcFramework/**/*.m'
    ss.public_header_files = 'SwiftObjcFramework/**/*.{h,pch}'

    ss.pod_target_xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => 'INLUDE_OBJC_TYPE=1',
      'OTHER_SWIFT_FLAGS' => '-D INLUDE_OBJC_TYPE'
    }
  end
end

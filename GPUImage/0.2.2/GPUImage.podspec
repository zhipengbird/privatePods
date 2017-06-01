#
# Be sure to run `pod lib lint GPUImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
   s.name             = 'GPUImage'
    s.version          = '0.2.2 '
    s.summary          = 'A short description of GPUImage.'
    s.requires_arc = true
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    s.homepage         = 'http://www.ushareit.com'
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'zhipengbird' => 'yuanph@ushareit.com' }
    s.source           = { :git => 'https://github.com/zhipengbird/GPUImage.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '7.0'
    s.frameworks = ['OpenGLES', 'CoreMedia', 'QuartzCore', 'AVFoundation']

    s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }

    s.default_subspec = 'GL'
    
    s.subspec 'GL' do |cs|
        cs.source_files = 'GPUImage/Classes/Core/GL/*.{m,h}'
        cs.public_header_files = 'GPUImage/Classes/Core/GL/GLProgram.h'

    end
    
    s.subspec 'Basic' do |bs|
        bs.dependency 'GPUImage/GL'
        bs.public_header_files = 'GPUImage/Classes/Core/Basic/**/*.{h}'
        bs.source_files = 'GPUImage/Classes/Core/Basic/**/*.{m,h}'
    end
    
    
  # s.resource_bundles = {
  #   'GPUImage' => ['GPUImage/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

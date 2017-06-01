#
# Be sure to run `pod lib lint GPUImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'GPUImage'
    s.version          = '0.2.7'
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
    
    s.subspec 'Filter' do |bl|
        bl.dependency 'GPUImage/Basic'
        bl.public_header_files = 'GPUImage/Classes/Filter/{Core,Blends,Colors,Effects,Images}/*.{h}'
        bl.source_files = 'GPUImage/Classes/Filter/{Core,Blends,Colors,Effects,Images}/*.{m,h}'
    end
    
#    s.subspec 'Color' do |co|
#        co.dependency 'GPUImage/FilterCore'
#        co.dependency 'GPUImage/Image'
#
#        co.public_header_files = 'GPUImage/Classes/Filter/Colors/**/*.{h}'
#        co.source_files = 'GPUImage/Classes/Filter/Colors/*.{m,h}'
#    end
#    
#    s.subspec 'Effect' do |ef|
#        ef.dependency 'GPUImage/FilterCore'
#        ef.dependency 'GPUImage/Image'
#
#        ef.public_header_files = 'GPUImage/Classes/Filter/Effects/**/*.{h}'
#        ef.source_files = 'GPUImage/Classes/Filter/Effects/*.{m,h}'
#    end
#    s.subspec 'Image' do |im|
#        im.dependency 'GPUImage/FilterCore'
##        im.dependency 'GPUImage/Color'
##        im.dependency 'GPUImage/Blends'
#        im.public_header_files = 'GPUImage/Classes/Filter/Images/**/*.{h}'
#        im.source_files = 'GPUImage/Classes/Filter/Images/*.{m,h}'
#    end

    
    
     s.resource_bundles = {
       'GPUImage' => ['GPUImage/Assets/*.png']
     }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end

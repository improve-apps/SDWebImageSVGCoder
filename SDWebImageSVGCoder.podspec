#
# Be sure to run `pod lib lint SDWebImageSVGCoder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SDWebImageSVGCoder'
  s.version          = '0.1.1'
  s.summary          = 'A SVG coder plugin for SDWebImage, using SVGKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/SDWebImage/SDWebImageSVGCoder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lizhuoli1126@126.com' => 'lizhuoli1126@126.com' }
  s.source           = { :git => 'https://github.com/SDWebImage/SDWebImageSVGCoder.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'

  s.source_files = 'SDWebImageSVGCoder/Classes/**/*', 'SDWebImageSVGCoder/Module/SDWebImageSVGCoder.h'

  s.prefix_header_file = 'SDWebImageSVGCoder/SDWebImageSVGCoder-Prefix.pch'

  s.module_map = 'SDWebImageSVGCoder/Module/SDWebImageSVGCoder.modulemap'
  
  s.ios.exclude_files = 'Source/AppKit additions/*.{h,m}', 'Source/Exporters/SVGKExporterNSImage.{h,m}'
  s.tvos.exclude_files = 'Source/AppKit additions/*.{h,m}', 'Source/Exporters/SVGKExporterNSImage.{h,m}'
  s.osx.exclude_files = 'Source/Exporters/SVGKExporterUIImage.{h,m}'
  s.libraries = 'xml2'
  s.framework = 'QuartzCore', 'CoreText'

  s.dependency 'CocoaLumberjack', '~> 3.0'
  s.dependency 'SDWebImage/Core', '>= 5.0.0-beta4'

  s.requires_arc = true
  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++11',
    'CLANG_CXX_LIBRARY' => 'libc++',
    'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'
  }
end

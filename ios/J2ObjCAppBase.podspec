#
# Be sure to run `pod lib lint NSBackgroundTask.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'J2ObjCAppBase'
    s.version          = '0.0.1'
    s.summary          = 'j2objc app base lib'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
  Lib shared to App Base utils on j2objc apps
                         DESC

   # change this variable to real J2ObjC path
   # s.j2objc_home = "\"/opt/j2objc/lib\""


    s.homepage         = 'https://github.com/mobilemindtec/j2objc-app-base'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Ricardo Bocchi' => 'ricardo@mobilemind.com.br' }
    s.source           = { :git => 'https://github.com/mobilemindtec/j2objc-app-base.git', :tag => s.version.to_s }

    s.ios.deployment_target = "10.0"
    s.osx.deployment_target = "10.10"

    s.source_files = 'J2ObjCAppBase/Classes/**/*'
    #s.source_files = '*.{h,m}'

    s.requires_arc = true

    #s.dependency 'J2ObjCGson'

    s.pod_target_xcconfig = {
      "OTHER_LDFLAGS" => "-ljre_emul -ljre_zip -liconv -lz -lguava -ljavax_inject -ljsr305 -framework Security",
      "FRAMEWORK_SEARCH_PATHS" => "\"$J2OBJC_HOME/frameworks\"",
      "LIBRARY_SEARCH_PATHS" => "\"$J2OBJC_HOME/lib\"",
      "HEADER_SEARCH_PATHS" => "\"$J2OBJC_HOME/include\"",
    }


end

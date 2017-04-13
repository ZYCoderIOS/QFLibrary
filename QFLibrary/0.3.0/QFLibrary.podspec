
Pod::Spec.new do |s|
    s.name             = 'QFLibrary'
    s.version          = '0.3.0'
    s.summary          = '擎风开发工具库'



    s.description      = <<-DESC
    擎风开发工具库,
    DESC

    s.homepage         = 'https://github.com/ZYCoderIOS/QFLibrary'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'ZYCoderIOS' => 'zhiyi@qingfengweb.com' }
    s.source           = { :git => 'https://github.com/ZYCoderIOS/QFLibrary.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'

    s.subspec 'LibrarySDKQF' do |ss|
        ss.source_files = 'QFLibrary/Classes/**/*'
        ss.dependency 'AFNetworking', '~> 2.3'
        ss.dependency 'ReactiveCocoa', '~> 2.3.1'
    end

    #安全
    s.subspec 'QFSecurity' do |sp|
        sp.source_files = 'QFLibrary/Classes/QFSecurity/*'
    end

    #网络
    s.subspec 'QFNetworking' do |sp|
        sp.source_files = 'QFLibrary/Classes/QFNetworking/*'
        sp.dependency 'AFNetworking', '~> 2.3'
        sp.dependency 'ReactiveCocoa', '~> 2.3.1'
        sp.dependency 'QFLibrary/QFSecurity'
    end

    #类扩展
    s.subspec 'QFClasssExtend' do |sp|
        sp.source_files = 'QFLibrary/Classes/QFClasssExtend/*'
    end



    #工具库
    s.subspec 'QFTool' do |sp|
        sp.source_files = 'QFLibrary/Classes/QFTool/*'
    end
end

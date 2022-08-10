#
# Be sure to run `pod lib lint A4xWebRtcFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'A4xWebRtcFramework'
  s.version          = '1.6.0'
  s.summary          = 'A short description of A4xWebRtcFramework.'
  
  
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
  DESC
  
  s.homepage         = 'https://github.com/a4xopen/A4xWebRtcFramework'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wjin' => 'wjin@addx.ai' }
  s.source           = { :git => 'https://github.com/a4xopen/A4xWebRtcFramework.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '10.0'
  
  #一级目录
  #s.source_files = 'A4xWebRtcFramework/*.{swift,h,m,mm}'
  s.public_header_files = 'A4xWebRtcFramework/A4xWebRtcGenerateImage.h','A4xWebRtcFramework/A4xWebRtcFramework-Bridging-Header.h'
  
  #二级目录
  s.subspec 'FFmpeg' do |ffmpeg|
    ffmpeg.source_files = 'A4xWebRtcFramework/FFmpeg/*.{swift,h,m,mm}'
    ffmpeg.public_header_files = 'A4xWebRtcFramework/Services/A4xFFmpegManager.h'
  end
  
  #二级目录
  s.subspec 'Services' do |services|
    services.source_files = 'Services/*.{swift,h,mm}'
    
    #三级目录
    services.subspec 'GPAC4iOS' do |gpac4ios|
      gpac4ios.source_files = 'A4xWebRtcFramework/Services/GPAC4iOS/*.{swift,h,mm,m}'
      gpac4ios.private_header_files = 'A4xWebRtcFramework/Services/GPAC4iOS/*.{h}'
      #gpac4ios.exclude_files = 'A4xWebRtcFramework/Services/TS2MP4/*.{a}'
    end
    
    #三级目录
    services.subspec 'TS2MP4' do |ts2mp4|
      ts2mp4.source_files = 'A4xWebRtcFramework/Services/TS2MP4/*.{swift,h,mm,m}'
      ts2mp4.public_header_files = ['A4xWebRtcFramework/Services/TS2MP4/ADMediaAssetExportSession.h','A4xWebRtcFramework/Services/TS2MP4/KMMedia.h','A4xWebRtcFramework/Services/TS2MP4/KMMediaAsset.h','A4xWebRtcFramework/Services/TS2MP4/KMMediaFormat.h','A4xWebRtcFramework/Services/TS2MP4/KMMediaAsset.h','A4xWebRtcFramework/Services/TS2MP4/KMMediaAssetExportSession.h']
      #ts2mp4.exclude_files = 'A4xWebRtcFramework/Services/TS2MP4/*.{a}'
    end
    
    #三级目录
    services.subspec 'ffmpeg' do |ffmpeg|
      ffmpeg.private_header_files = ['A4xWebRtcFramework/Services/ffmpeg/include/**/*.{h}']
    end
    
#    #三级目录
#    services.subspec 'openssl' do |openssl|
#      openssl.private_header_files = ['A4xWebRtcFramework/Services/openssl/include/**/*.{h}']
#    end

    #三级目录
    services.subspec 'A4xMediaKit' do |a4xmediakit|
      a4xmediakit.source_files = 'A4xWebRtcFramework/Services/A4xMediaKit/include/*.{swift,h,mm,m}'
      a4xmediakit.public_header_files = ['A4xWebRtcFramework/Services/A4xMediaKit/include/**/*.{h}']
    end

    #三级目录
    services.subspec 'A4xSignal' do |a4xsignal|
      a4xsignal.source_files = 'A4xWebRtcFramework/Services/A4xSignal/include/*.{swift,h,mm,m}'
      a4xsignal.public_header_files = ['A4xWebRtcFramework/Services/A4xSignal/include/**/*.{h}']
    end
    
    #三级目录
    services.subspec 'IJKMediaPlayer' do |ijkplayer|
      ijkplayer.source_files = ['A4xWebRtcFramework/Services/IJKMediaPlayer/*.{h,mm,m}','A4xWebRtcFramework/Services/IJKMediaPlayer/**/*.{h,mm,m,c}','A4xWebRtcFramework/Services/ijkmedia/ijkplayer/ijkavformat/*.{h,c}','A4xWebRtcFramework/Services/ijkmedia/ijkplayer/ijkavutil/*.{h,c,cpp}','A4xWebRtcFramework/Services/ijkmedia/ijkplayer/pipeline/*.{h,c}','A4xWebRtcFramework/Services/ijkmedia/ijkplayer/*.{h,c}','A4xWebRtcFramework/Services/ijkmedia/ijksdl/*.{h,c}','A4xWebRtcFramework/Services/ijkmedia/ijksdl/dummy/*.{h,c}','A4xWebRtcFramework/Services/ijkmedia/ijksdl/ffmpeg/**/*.{h,c}','A4xWebRtcFramework/Services/ijkmedia/ijksdl/gles2/**/*.{h,c,m}']
      #ijkplayer.private_header_files = ['A4xWebRtcFramework/Services/IJKMediaPlayer/*.{h}']
      ijkplayer.public_header_files = ['A4xWebRtcFramework/Services/IJKMediaPlayer/IJKMediaPlayback.h','A4xWebRtcFramework/Services/IJKMediaPlayer/IJKMPMoviePlayerController.h','A4xWebRtcFramework/Services/IJKMediaPlayer/IJKFFOptions.h','A4xWebRtcFramework/Services/IJKMediaPlayer/IJKFFMoviePlayerController.h','A4xWebRtcFramework/Services/IJKMediaPlayer/IJKAVMoviePlayerController.h','A4xWebRtcFramework/Services/IJKMediaPlayer/IJKMediaModule.h','A4xWebRtcFramework/Services/IJKMediaPlayer/IJKMediaPlayer.h','A4xWebRtcFramework/Services/IJKMediaPlayer/IJKNotificationManager.h','A4xWebRtcFramework/Services/IJKMediaPlayer/IJKKVOController.h','A4xWebRtcFramework/Services/IJKMediaPlayer/IJKSDLGLViewProtocol.h','A4xWebRtcFramework/Services/IJKMediaPlayer/IJKFFMonitor.h']
      ijkplayer.exclude_files = ['A4xWebRtcFramework/Services/ijkmedia/ijkplayer/ijkavformat/ijkioandroidio.c','A4xWebRtcFramework/Services/ijkmedia/ijkplayer/ijkavformat/ijkmediadatasource.c','A4xWebRtcFramework/Services/ijkmedia/ijksdl/ijksdl_extra_log.h','A4xWebRtcFramework/Services/ijkmedia/ijksdl/ijksdl_extra_log.c']
      ijkplayer.requires_arc = false
      ijkplayer.requires_arc = ['A4xWebRtcFramework/Services/IJKMediaPlayer/*','A4xWebRtcFramework/Services/IJKMediaPlayer/ijkmedia/ijkplayer/ios/pipeline/*','A4xWebRtcFramework/Services/IJKMediaPlayer/ijkmedia/ijkplayer/ios/*','A4xWebRtcFramework/Services/IJKMediaPlayer/ijkmedia/ijksdl/ios/*','A4xWebRtcFramework/Services/ijkmedia/ijkplayer/ijkavformat/*','A4xWebRtcFramework/Services/ijkmedia/ijkplayer/ijkavutil/*','A4xWebRtcFramework/Services/ijkmedia/ijkplayer/pipeline/*','A4xWebRtcFramework/Services/ijkmedia/ijkplayer/*','A4xWebRtcFramework/Services/ijkmedia/ijksdl/*','A4xWebRtcFramework/Services/ijkmedia/ijksdl/dummy/*','A4xWebRtcFramework/Services/ijkmedia/ijksdl/ffmpeg/**/*','A4xWebRtcFramework/Services/ijkmedia/ijksdl/gles2/**/*']
    end
    
  end
  
  #二级目录
  s.vendored_frameworks    =  'Frameworks/*.framework'
  s.xcconfig     = {
    'ENABLE_BITCODE' => 'NO',
    'HEADER_SEARCH_PATHS' => [
    "${PODS_ROOT}/../A4xWebRtcFramework/A4xWebRtcFramework/Services/ffmpeg/include",
    "${PODS_ROOT}/../A4xWebRtcFramework/A4xWebRtcFramework/Services/IJKMediaPlayer/ijkmedia",
    "${PODS_ROOT}/../A4xWebRtcFramework/A4xWebRtcFramework/Services/ijkmedia",
    "${PODS_ROOT}/../A4xWebRtcFramework/A4xWebRtcFramework/Services/A4xMediaKit/include",
    "${PODS_ROOT}/../A4xWebRtcFramework/A4xWebRtcFramework/Services/A4xSignal/include"
    ]
  }
  
  s.dependency 'Starscream'
  s.frameworks = 'VideoToolBox'
  s.vendored_libraries  = 'A4xWebRtcFramework/Services/TS2MP4/*.{a}', 'A4xWebRtcFramework/Services/GPAC4iOS/*.{a}','A4xWebRtcFramework/Services/ffmpeg/lib/*.{a}','A4xWebRtcFramework/Services/A4xMediaKit/lib/*.{a}','A4xWebRtcFramework/Services/A4xSignal/lib/*.{a}'
  s.libraries =  'iconv', 'z'
  s.dependency 'XCGLogger', '~> 7.0.1'
  #s.dependency 'YYWebImage', '~>1.0.5'
end

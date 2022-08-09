//
//  A4xWebRtcGenerateImage.h
//  A4xWebRtcFramework
//
//  Created by kzhi on 2020/12/25.
//

#import <Foundation/Foundation.h>
#import <WebRTC/WebRTC.h>

NS_ASSUME_NONNULL_BEGIN


@interface NSObject (A4xWebRtcGenerateImage)
- (void)generateImage :(RTCVideoFrame *)frame comple:(void (^)(UIImage *))animations;
@end

NS_ASSUME_NONNULL_END

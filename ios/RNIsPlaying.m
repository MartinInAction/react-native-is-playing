
#import "RNIsPlaying.h"
#import <AVFoundation/AVFoundation.h>
@implementation RNIsPlaying

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(isAudioPlaying:(RCTResponseSenderBlock)callback)
{
    BOOL isOtherAudioPlaying = [[AVAudioSession sharedInstance] secondaryAudioShouldBeSilencedHint];
    callback(@[[NSNumber numberWithBool:isOtherAudioPlaying]]);
}



@end


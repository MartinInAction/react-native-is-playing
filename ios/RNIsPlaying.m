
#import "RNIsPlaying.h"

@implementation RNIsPlaying

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(isAudioPlaying:(BOOL *))
{
    BOOL isOtherAudioPlaying = [[AVAudioSession sharedInstance] isOtherAudioPlaying];
    if (isOtherAudioPlaying) {
        return true
    }
    else {
        return false
    }
}


@end


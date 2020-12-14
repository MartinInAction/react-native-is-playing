
#import "RNIsPlaying.h"
#import <AVFoundation/AVFoundation.h>
// #import <MediaPlayer/MPMusicPlayerController.h>
#import <MediaPlayer/MediaPlayer.h>


@implementation RNIsPlaying

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(isAudioPlaying:(RCTResponseSenderBlock)callback)
{
    BOOL isOtherAudioPlaying = [[AVAudioSession sharedInstance] isOtherAudioPlaying];
    callback(@[[NSNull null], [NSNumber numberWithBool:isOtherAudioPlaying]]);
}

RCT_EXPORT_METHOD(whatSong:(RCTResponseSenderBlock)callback)
{
    NSDictionary *player = [[MPNowPlayingInfoCenter defaultCenter] nowPlayingInfo];
    NSString *songTitle = player[MPMediaItemPropertyTitle];

    // MPMusicPlayerController *player = [MPMusicPlayerController systemMusicPlayer];
    // NSLog(player);
    // float deviceVolumeLevel = player.volume;
    // NSLog(@"Current device volume level : %f",deviceVolumeLevel);

    // callback(@[[NSNull null], title]);
}


@end

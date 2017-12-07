import {NativeModules} from 'react-native'
const {RNIsPlaying} = NativeModules

let isPlayingAudio = () => {
 RNIsPlaying.isAudioPlaying((musicState) => {
      if (musicState) return true
      else return false
    })
}

export default isPlayingAudio

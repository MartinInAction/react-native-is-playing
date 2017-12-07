import {NativeModules} from 'react-native'
const {RNIsPlaying} = NativeModules

let isPlayingAudio = () => {
  return new Promise((resolve, reject) => {
    RNIsPlaying.isAudioPlaying((musicState) => {
      resolve(musicState)
    })
  })
}

export default isPlayingAudio

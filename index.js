import {NativeModules, Platform} from 'react-native'
const {RNIsPlaying} = NativeModules

let isPlayingAudio = () => {
  if (Platform.OS === 'ios') {
    return new Promise((resolve, reject) => {
      RNIsPlaying.isAudioPlaying((error, musicState) => {
        if (error) reject(error)
        resolve(musicState)
      })
    })
  }

  return new Promise((resolve, reject) => {
    RNIsPlaying.isAudioPlaying((musicState, error) => {
      if (error) reject(error)
      resolve(musicState)
    })
  })

}

export default isPlayingAudio

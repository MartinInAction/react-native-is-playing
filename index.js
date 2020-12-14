import {NativeModules, Platform} from 'react-native'
const {isPlaying} = NativeModules

let isPlayingAudio = () => {
  if (Platform.OS === 'ios') {
    return new Promise((resolve, reject) => {
      isPlaying.isAudioPlaying((error, musicState) => {
        if (error) reject(error)
        resolve(musicState)
      })
    })
  }

  return new Promise((resolve, reject) => {
    isPlaying.isAudioPlaying((musicState, error) => {
      if (error) reject(error)
      resolve(musicState)
    })
  })

}

export default isPlayingAudio

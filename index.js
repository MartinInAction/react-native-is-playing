import {NativeModules} from 'react-native'
const {RNIsPlaying} = NativeModules

let isPlayingAudio = () => {
  return new Promise((resolve, reject) => {
    RNIsPlaying.isAudioPlaying((error, musicState) => {
      if (error) reject(error)
      resolve(musicState)
    })
  })
}

export let whatSong = () => {
  return new Promise((resolve, reject) => {
    RNIsPlaying.whatSong((error, musicState) => {
      if (error) reject(error)
      resolve(musicState)
    })
  })
}

export default isPlayingAudio

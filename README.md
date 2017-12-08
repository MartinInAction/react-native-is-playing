
# react-native-is-playing

a simple module to see if music is playing on your device! 
simulator is no go!

Only for ios, android is comming soon!

## Getting started

`$ yarn add react-native-is-playing`

### Mostly automatic installation

`$ react-native link react-native-is-playing`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-is-playing` and add `RNIsPlaying.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNIsPlaying.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNIsPlayingPackage;` to the imports at the top of the file
  - Add `new RNIsPlayingPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-is-playing'
  	project(':react-native-is-playing').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-is-playing/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-is-playing')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNIsPlaying.sln` in `node_modules/react-native-is-playing/windows/RNIsPlaying.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Is.Playing.RNIsPlaying;` to the usings at the top of the file
  - Add `new RNIsPlayingPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNIsPlaying from 'react-native-is-playing';
isPlayingAudio().then((res) => {
      if (res) console.warn('💃YEH! MUSIC IS OOOOON! 🤘')
      else console.warn('🔇NO MUSIC HERE...🔇')
    })
RNIsPlaying;
```
  

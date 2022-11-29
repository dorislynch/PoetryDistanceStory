
# react-native-poetry-distance-story

## Getting started

`$ npm install react-native-poetry-distance-story --save`

### Mostly automatic installation

`$ react-native link react-native-poetry-distance-story`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-poetry-distance-story` and add `RNPoetryDistanceStory.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPoetryDistanceStory.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPoetryDistanceStoryPackage;` to the imports at the top of the file
  - Add `new RNPoetryDistanceStoryPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-poetry-distance-story'
  	project(':react-native-poetry-distance-story').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-poetry-distance-story/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-poetry-distance-story')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNPoetryDistanceStory.sln` in `node_modules/react-native-poetry-distance-story/windows/RNPoetryDistanceStory.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Poetry.Distance.Story.RNPoetryDistanceStory;` to the usings at the top of the file
  - Add `new RNPoetryDistanceStoryPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNPoetryDistanceStory from 'react-native-poetry-distance-story';

// TODO: What to do with the module?
RNPoetryDistanceStory;
```
  
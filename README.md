# Video Background Controller iOS

<img align="right" src="https://github.com/amirhanov/backgroundVideo/blob/master/Source/gif.gif" height="250"/>

Hello everyone ✌️ Create background video for the application. Consider two options: first - native with the AVPlayer and AVFoundation and second - with Cocoa Pods (SwiftVideoBackground).

If you like the project, do not forget to put star and follow me on GitHub:

[![https://github.com/amirhanov](https://github.com/amirhanov/backgroundVideo/blob/master/Source/gitHub.svg)](https://github.com/amirhanov)

## Requirements

Swift `4+`. Ready for use on iOS `9+`.

## Example

To run the example project, clone the repo, and run scheme from **.xcodeproj**.

## Installation

1. Open **Terminal**
2. Run command:

```
cd /project path
```

3. Then to install project you need run the command on Terminal:

```
pod install
```

## Usage

You can use one of two options. 

For local video:

1. Open **.xcodeproj** file
2. Import video file to project. Check the box **copy if needed**
3. Open swift file **ViewController**
4. Then paste the file name and format into the appropriate place:

```
let videoURL: NSURL = Bundle.main.url(forResource: "file name", withExtension: ".format")! as NSURL
```

5. Press `Command + R` or `Play` and run project

For url video:

1. Uncomment a piece of code for url in method **viwDidLoad**:

```
try? VideoBackground.shared.play(view: view, videoName: "file name", videoType: "format")
```

2. Then paste the file name and format into the appropriate place
3. In method **viwDidLoad**, comment out a piece of code for local video
3. Press `Command + R` or `Play` and run project. **Great!**

## Support

Support me with a monthly donation and help me continue activities. Become a sponsors [Yandex.Money](http://bit.ly/2HivTkw) or [Rocket.Bank](http://bit.ly/2TsB8ov).

## Author

Email: studio@byidole.com

[![https://www.youtube.com/channel/UChAjZCAZEqDSEbTAYOxGwSA?sub_confirmation=1](https://github.com/amirhanov/backgroundVideo/blob/master/Source/youTube.svg)](https://www.youtube.com/channel/UChAjZCAZEqDSEbTAYOxGwSA?sub_confirmation=1) 
[![https://www.behance.net/amirhanov](https://github.com/amirhanov/backgroundVideo/blob/master/Source/behance.svg)](https://www.behance.net/amirhanov)
[![https://apps.apple.com/ru/developer/id1278605063](https://github.com/amirhanov/backgroundVideo/blob/master/Source/appStore.svg)](https://apps.apple.com/ru/developer/id1278605063)

## Licence

Available under the MIT license.

© IDOLE Studio.
# websafe_platform

![Dart Publisher](https://github.com/peiffer-innovations/websafe_platform/workflows/Dart%20Publisher/badge.svg)

A Flutter compatible library to detect if the app is Android, iOS, or Web 
without requiring a hard reference on `dart:io`, which actually breaks Flutter
Web based applications.


## Using the library

Add the repo to your Flutter `pubspec.yaml` file.

```
dependencies:
  websafe_platform: <<version>> 
```

Then run...
```
flutter packages get
```


## Example

```dart
import 'package:websafe_platform/websafe_platform.dart';

...
var websafePlatform = WebsafePlatform();

var isAndroid = websafePlatform.isAndroid();
var isIOS = websafePlatform.isIOS();
var isWeb = websafePlatform.isWeb();

```
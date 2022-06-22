<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [websafe_svg](#websafe_svg)
  - [Using the library](#using-the-library)
  - [Supports](#supports)
  - [Example](#example)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# websafe_svg

![Dart Publisher](https://github.com/peiffer-innovations/websafe_svg/workflows/Dart%20Publisher/badge.svg)

A Flutter compatible library to handle SVGs for Android, iOS, and Web.


## Using the library

Add the repo to your Flutter `pubspec.yaml` file.

```
dependencies:
  websafe_svg: <<version>> 
```

Then run...
```
flutter packages get
```

## Supports

* `asset`
* `network`
* `memory`
* `string`

## Example

```dart
import 'package:websafe_svg/websafe_svg.dart';

...
Widget build(BuildContext context) {
  return WebsafeSvg.asset(...);
}
```

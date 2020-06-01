# websafe_svg

![Dart Publisher](https://github.com/peiffer-innovations/websafe_svg/workflows/Dart%20Publisher/badge.svg)

A Flutter compatible library to handle SVGs for Android, iOS, and Web.

The `color` attribute currently only works on Flutter `1.19.0-1.0.pre` or higher.  At time of release, this was available in the `dev` channel.

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
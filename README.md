# websafe_svg

![Dart Publisher](https://github.com/peiffer-innovations/websafe_svg/workflows/Dart%20Publisher/badge.svg)

A Flutter compatible library to handle SVGs for Android, iOS, and Web.

The `color` attribute assumes that the SVG is white on Web.  It will look for
and replace the four following strings to attempt to set the color:

* `"#FFFFFF"`
* `"#ffffff"`
* `"#FFF"`
* `"#fff"`

If the SVG does not include one of those strings then the `color` option will be
a no-op and the SVG will use whatever color is set.

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
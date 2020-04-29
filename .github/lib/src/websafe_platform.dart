// ignore: uri_does_not_exist
import 'platform/stub_platform.dart'
    // ignore: uri_does_not_exist
    if (dart.library.io) 'platform/io_platform.dart'
    // ignore: uri_does_not_exist
    if (dart.library.html) 'platform/browser_platform.dart';

class WebsafePlatform {
  /// Returns whether or not the application is running on Android
  bool isAndroid() => isPlatformAndroid();

  /// Returns whether or not the application is running on iOS
  bool isIOS() => isPlatformIOS();

  /// Returns whether or not the application is running on Flutter Web
  bool isWeb() => isPlatformWeb();
}

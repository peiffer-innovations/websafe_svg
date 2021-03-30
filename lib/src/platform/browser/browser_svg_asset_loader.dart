import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg_loader.dart';

@immutable
class BrowserSvgAssetLoader implements BrowserSvgLoader {
  BrowserSvgAssetLoader({
    required this.asset,
    this.package,
  });

  final String asset;
  final String? package;

  @override
  bool operator ==(dynamic other) =>
      other is BrowserSvgAssetLoader &&
      other.asset == asset &&
      other.package == package;

  @override
  int get hashCode => '$asset|$package'.hashCode;

  @override
  Future<String> load() async {
    var data = await rootBundle.loadString(
      package == null ? asset : 'packages/$package/$asset',
    );

    return data;
  }
}

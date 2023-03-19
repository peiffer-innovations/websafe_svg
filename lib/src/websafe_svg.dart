import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: uri_does_not_exist
import 'platform/stub_svg.dart'
    // ignore: uri_does_not_exist
    if (dart.library.io) 'platform/io_svg.dart'
    // ignore: uri_does_not_exist
    if (dart.library.html) 'platform/browser_svg.dart';

class WebsafeSvg {
  static Widget asset(
    String asset, {
    Alignment alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    Clip clipBehavior = Clip.hardEdge,
    ColorFilter? colorFilter,
    bool excludeFromSemantics = false,
    BoxFit fit = BoxFit.contain,
    double? height,
    Key? key,
    bool matchTextDirection = false,
    String? package,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    SvgTheme theme = const SvgTheme(),
    double? width,
  }) =>
      svgFromAsset(
        asset,
        alignment: alignment,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        clipBehavior: clipBehavior,
        colorFilter: colorFilter,
        excludeFromSemantics: excludeFromSemantics,
        fit: fit,
        height: height,
        key: key,
        matchTextDirection: matchTextDirection,
        placeholderBuilder: placeholderBuilder,
        package: package,
        semanticsLabel: semanticsLabel,
        theme: theme,
        width: width,
      );

  static Widget memory(
    Uint8List bytes, {
    Alignment alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    Clip clipBehavior = Clip.hardEdge,
    ColorFilter? colorFilter,
    bool excludeFromSemantics = false,
    BoxFit fit = BoxFit.contain,
    double? height,
    Key? key,
    bool matchTextDirection = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    SvgTheme theme = const SvgTheme(),
    double? width,
  }) =>
      svgFromMemory(
        bytes,
        alignment: alignment,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        clipBehavior: clipBehavior,
        colorFilter: colorFilter,
        excludeFromSemantics: excludeFromSemantics,
        fit: fit,
        height: height,
        key: key,
        matchTextDirection: matchTextDirection,
        placeholderBuilder: placeholderBuilder,
        semanticsLabel: semanticsLabel,
        theme: theme,
        width: width,
      );

  static Widget network(
    String url, {
    Alignment alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    Clip clipBehavior = Clip.hardEdge,
    ColorFilter? colorFilter,
    bool excludeFromSemantics = false,
    BoxFit fit = BoxFit.contain,
    Map<String, String>? headers,
    double? height,
    Key? key,
    bool matchTextDirection = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    SvgTheme theme = const SvgTheme(),
    double? width,
  }) =>
      svgFromNetwork(
        url,
        alignment: alignment,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        clipBehavior: clipBehavior,
        colorFilter: colorFilter,
        excludeFromSemantics: excludeFromSemantics,
        fit: fit,
        headers: headers,
        height: height,
        key: key,
        matchTextDirection: matchTextDirection,
        placeholderBuilder: placeholderBuilder,
        semanticsLabel: semanticsLabel,
        theme: theme,
        width: width,
      );

  static Widget string(
    String bytes, {
    Alignment alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    Clip clipBehavior = Clip.hardEdge,
    ColorFilter? colorFilter,
    bool excludeFromSemantics = false,
    BoxFit fit = BoxFit.contain,
    double? height,
    Key? key,
    bool matchTextDirection = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    SvgTheme theme = const SvgTheme(),
    double? width,
  }) =>
      svgFromString(
        bytes,
        alignment: alignment,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        clipBehavior: clipBehavior,
        colorFilter: colorFilter,
        excludeFromSemantics: excludeFromSemantics,
        fit: fit,
        height: height,
        key: key,
        matchTextDirection: matchTextDirection,
        placeholderBuilder: placeholderBuilder,
        semanticsLabel: semanticsLabel,
        theme: theme,
        width: width,
      );
}

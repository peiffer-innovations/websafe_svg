import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg_asset_loader.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg_memory_loader.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg_network_loader.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg_string_loader.dart';

Widget svgFromAsset(
  String asset, {
  Alignment alignment = Alignment.center,
  bool allowDrawingOutsideViewBox = false,
  Clip clipBehavior = Clip.hardEdge,
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
    BrowserSvg(
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      clipBehavior: clipBehavior,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      height: height,
      loader: BrowserSvgAssetLoader(
        asset: asset,
        package: package,
      ),
      key: key,
      matchTextDirection: matchTextDirection,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      theme: theme,
      width: width,
    );

Widget svgFromMemory(
  Uint8List bytes, {
  Alignment alignment = Alignment.center,
  bool allowDrawingOutsideViewBox = false,
  Clip clipBehavior = Clip.hardEdge,
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
    BrowserSvg(
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      clipBehavior: clipBehavior,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      height: height,
      loader: BrowserSvgMemoryLoader(bytes: bytes),
      key: key,
      matchTextDirection: matchTextDirection,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      theme: theme,
      width: width,
    );

Widget svgFromNetwork(
  String url, {
  Alignment alignment = Alignment.center,
  bool allowDrawingOutsideViewBox = false,
  Clip clipBehavior = Clip.hardEdge,
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
    BrowserSvg(
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      clipBehavior: clipBehavior,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      height: height,
      loader: BrowserSvgNetworkLoader(
        headers: headers,
        url: url,
      ),
      key: key,
      matchTextDirection: matchTextDirection,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      theme: theme,
      width: width,
    );

Widget svgFromString(
  String string, {
  Alignment alignment = Alignment.center,
  bool allowDrawingOutsideViewBox = false,
  Clip clipBehavior = Clip.hardEdge,
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
    BrowserSvg(
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      clipBehavior: clipBehavior,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      height: height,
      loader: BrowserSvgStringLoader(string: string),
      key: key,
      matchTextDirection: matchTextDirection,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      theme: theme,
      width: width,
    );

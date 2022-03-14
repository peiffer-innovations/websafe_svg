import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg_asset_loader.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg_memory_loader.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg_network_loader.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg_string_loader.dart';

Widget svgFromAsset(
  String asset, {
  Alignment alignment = Alignment.center,
  Color? color,
  bool excludeFromSemantics = false,
  BoxFit fit = BoxFit.contain,
  double? height,
  Key? key,
  String? package,
  WidgetBuilder? placeholderBuilder,
  String? semanticsLabel,
  double? width,
}) =>
    BrowserSvg(
      alignment: alignment,
      color: color,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      height: height,
      loader: BrowserSvgAssetLoader(
        asset: asset,
        package: package,
      ),
      key: key,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      width: width,
    );

Widget svgFromMemory(
  Uint8List bytes, {
  Alignment alignment = Alignment.center,
  Color? color,
  bool excludeFromSemantics = false,
  BoxFit fit = BoxFit.contain,
  double? height,
  Key? key,
  WidgetBuilder? placeholderBuilder,
  String? semanticsLabel,
  double? width,
}) =>
    BrowserSvg(
      alignment: alignment,
      color: color,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      height: height,
      loader: BrowserSvgMemoryLoader(bytes: bytes),
      key: key,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      width: width,
    );

Widget svgFromNetwork(
  String url, {
  Alignment alignment = Alignment.center,
  Color? color,
  bool excludeFromSemantics = false,
  BoxFit fit = BoxFit.contain,
  double? height,
  Map<String, String>? headers,
  Key? key,
  WidgetBuilder? placeholderBuilder,
  String? semanticsLabel,
  double? width,
}) =>
    BrowserSvg(
      alignment: alignment,
      color: color,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      height: height,
      loader: BrowserSvgNetworkLoader(
        headers: headers,
        url: url,
      ),
      key: key,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      width: width,
    );

Widget svgFromString(
  String string, {
  Alignment alignment = Alignment.center,
  Color? color,
  bool excludeFromSemantics = false,
  BoxFit fit = BoxFit.contain,
  double? height,
  Key? key,
  WidgetBuilder? placeholderBuilder,
  String? semanticsLabel,
  double? width,
}) =>
    BrowserSvg(
      alignment: alignment,
      color: color,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      height: height,
      loader: BrowserSvgStringLoader(string: string),
      key: key,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      width: width,
    );

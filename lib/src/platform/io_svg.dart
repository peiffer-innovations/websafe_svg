import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    SvgPicture.asset(
      asset,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      clipBehavior: clipBehavior,
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
  String? package,
  WidgetBuilder? placeholderBuilder,
  String? semanticsLabel,
  SvgTheme theme = const SvgTheme(),
  double? width,
}) =>
    SvgPicture.memory(
      bytes,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      clipBehavior: clipBehavior,
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
    SvgPicture.network(
      url,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      clipBehavior: clipBehavior,
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

Widget svgFromString(
  String bytes, {
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
    SvgPicture.string(
      bytes,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      clipBehavior: clipBehavior,
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

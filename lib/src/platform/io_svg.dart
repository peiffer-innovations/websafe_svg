import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget svgFromAsset(
  String asset, {
  alignment = Alignment.center,
  Color color,
  bool excludeFromSemantics = false,
  BoxFit fit = BoxFit.contain,
  double height,
  Key key,
  String package,
  WidgetBuilder placeholderBuilder,
  String semanticsLabel,
  double width,
}) =>
    SvgPicture.asset(
      asset,
      alignment: Alignment.center,
      color: color,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      height: height,
      key: key,
      package: package,
      semanticsLabel: semanticsLabel,
      width: width,
    );

Widget svgFromMemory(
  Uint8List bytes, {
  alignment = Alignment.center,
  Color color,
  bool excludeFromSemantics = false,
  BoxFit fit = BoxFit.contain,
  double height,
  Key key,
  WidgetBuilder placeholderBuilder,
  String semanticsLabel,
  double width,
}) =>
    SvgPicture.memory(
      bytes,
      alignment: Alignment.center,
      color: color,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      height: height,
      key: key,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      width: width,
    );

Widget svgFromNetwork(
  String url, {
  alignment = Alignment.center,
  Color color,
  bool excludeFromSemantics = false,
  BoxFit fit = BoxFit.contain,
  Map<String, String> headers,
  double height,
  Key key,
  WidgetBuilder placeholderBuilder,
  String semanticsLabel,
  double width,
}) =>
    SvgPicture.network(
      url,
      alignment: alignment,
      color: color,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      headers: headers,
      height: height,
      key: key,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      width: width,
    );

Widget svgFromString(
  String bytes, {
  alignment = Alignment.center,
  Color color,
  bool excludeFromSemantics = false,
  BoxFit fit = BoxFit.contain,
  double height,
  Key key,
  WidgetBuilder placeholderBuilder,
  String semanticsLabel,
  double width,
}) =>
    SvgPicture.string(
      bytes,
      alignment: Alignment.center,
      color: color,
      excludeFromSemantics: excludeFromSemantics,
      fit: fit,
      height: height,
      key: key,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      width: width,
    );

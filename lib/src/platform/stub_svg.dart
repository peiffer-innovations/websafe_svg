import 'dart:typed_data';

import 'package:flutter/material.dart';

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
    throw UnimplementedError();

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
    throw UnimplementedError();

Widget svgFromNetwork(
  String url, {
  alignment = Alignment.center,
  Color color,
  bool excludeFromSemantics = false,
  BoxFit fit = BoxFit.contain,
  double height,
  Map<String, String> headers,
  Key key,
  WidgetBuilder placeholderBuilder,
  String semanticsLabel,
  double width,
}) =>
    throw UnimplementedError();

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
    throw UnimplementedError();

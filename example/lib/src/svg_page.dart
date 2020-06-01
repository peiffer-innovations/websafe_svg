import 'package:flutter/material.dart';

class SvgPage extends StatelessWidget {
  SvgPage({
    @required this.child,
    Key key,
  })  : assert(child != null),
        super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SVG'),
      ),
      body: Center(
        child: SizedBox(
          height: 100.0,
          width: 100.0,
          child: child,
        ),
      ),
    );
  }
}

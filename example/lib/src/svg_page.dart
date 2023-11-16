import 'package:flutter/material.dart';

class SvgPage extends StatelessWidget {
  const SvgPage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SVG'),
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

import 'package:flutter/material.dart';
import 'package:websafe_svg_example/src/animation_page.dart';

import 'src/asset_svg_page.dart';
import 'src/memory_svg_page.dart';
import 'src/network_svg_page.dart';
import 'src/string_svg_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebsafeSvg Example'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const AnimationPage(),
              ),
            ),
            title: const Text('Animation'),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const AssetSvgPage(),
              ),
            ),
            title: const Text('Assets'),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const MemorySvgPage(),
              ),
            ),
            title: const Text('Memory'),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const NetworkSvgPage(),
              ),
            ),
            title: const Text('Network'),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const StringSvgPage(),
              ),
            ),
            title: const Text('String'),
          ),
        ],
      ),
    );
  }
}

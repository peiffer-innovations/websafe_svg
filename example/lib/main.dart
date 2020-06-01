import 'package:flutter/material.dart';
import 'package:websafe_svg_example/src/animation_page.dart';

import 'src/asset_svg_page.dart';
import 'src/memory_svg_page.dart';
import 'src/network_svg_page.dart';
import 'src/string_svg_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebsafeSvg Example'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => AnimationPage(),
              ),
            ),
            title: Text('Animation'),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => AssetSvgPage(),
              ),
            ),
            title: Text('Assets'),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => MemorySvgPage(),
              ),
            ),
            title: Text('Memory'),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => NetworkSvgPage(),
              ),
            ),
            title: Text('Network'),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => StringSvgPage(),
              ),
            ),
            title: Text('String'),
          ),
        ],
      ),
    );
  }
}

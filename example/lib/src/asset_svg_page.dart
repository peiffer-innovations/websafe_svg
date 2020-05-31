import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AssetSvgPage extends StatefulWidget {
  AssetSvgPage({
    Key key,
  }) : super(key: key);

  @override
  _AssetSvgPageState createState() => _AssetSvgPageState();
}

class _AssetSvgPageState extends State<AssetSvgPage> {
  List<String> _svgs;

  @override
  void initState() {
    super.initState();

    _initialize();
  }

  Future<void> _initialize() async {
    var data = await rootBundle.loadString('assets/all.json');
    var all = json.decode(data);

    var svgs = <String>[];
    for (var i in all) {
      svgs.add(i?.toString());
    }
    _svgs = svgs;

    if (mounted == true) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assets'),
      ),
      body: _svgs == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _svgs.length,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  leading: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xffa0a0a0),
                    elevation: 2.0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      width: 60.0,
                      child: WebsafeSvg.asset(
                        'assets/svgs/${_svgs[index]}',
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                  ),
                  title: Text(_svgs[index]),
                ),
              ),
            ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:websafe_svg_example/src/svg_page.dart';

class NetworkSvgPage extends StatefulWidget {
  NetworkSvgPage({
    Key key,
  }) : super(key: key);

  @override
  _NetworkSvgPageState createState() => _NetworkSvgPageState();
}

class _NetworkSvgPageState extends State<NetworkSvgPage> {
  List<String> _svgs;

  @override
  void initState() {
    super.initState();

    _initialize();
  }

  Future<void> _initialize() async {
    final data = await rootBundle.loadString('assets/all.json');
    final all = json.decode(data);

    final svgs = <String>[];
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
        title: const Text('Network'),
      ),
      body: _svgs == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _svgs.length,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  leading: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xffa0a0a0),
                    elevation: 2.0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      width: 60.0,
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => SvgPage(
                              child: WebsafeSvg.network(
                                'https://raw.githubusercontent.com/peiffer-innovations/websafe_svg/main/example/assets-src/svgs/${_svgs[index]}',
                                fit: BoxFit.contain,
                                height: 30.0,
                                width: 30.0,
                              ),
                            ),
                          ),
                        ),
                        child: WebsafeSvg.network(
                          'https://raw.githubusercontent.com/peiffer-innovations/websafe_svg/main/example/assets-src/svgs/${_svgs[index]}',
                          color: Colors.white,
                          fit: BoxFit.contain,
                          height: 30.0,
                          width: 30.0,
                        ),
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

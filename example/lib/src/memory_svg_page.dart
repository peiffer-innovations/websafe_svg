import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:websafe_svg_example/src/svg_page.dart';

class MemorySvgPage extends StatefulWidget {
  MemorySvgPage({
    Key key,
  }) : super(key: key);

  @override
  _MemorySvgPageState createState() => _MemorySvgPageState();
}

class _MemorySvgPageState extends State<MemorySvgPage> {
  List<_SvgImage> _svgs;

  @override
  void initState() {
    super.initState();

    _initialize();
  }

  Future<void> _initialize() async {
    var data = await rootBundle.loadString('assets/all.json');
    var all = json.decode(data);

    var svgs = <_SvgImage>[];
    for (var i in all) {
      svgs.add(
        _SvgImage(
          image: utf8.encode(
            await rootBundle.loadString('assets/svgs/$i'),
          ),
          name: i?.toString(),
        ),
      );
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
        title: Text('Memory'),
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
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => SvgPage(
                              child: WebsafeSvg.memory(
                                _svgs[index].image,
                                fit: BoxFit.contain,
                                height: 30.0,
                                width: 30.0,
                              ),
                            ),
                          ),
                        ),
                        child: WebsafeSvg.memory(
                          _svgs[index].image,
                          color: Colors.white,
                          fit: BoxFit.contain,
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),
                    ),
                  ),
                  title: Text(_svgs[index].name),
                ),
              ),
            ),
    );
  }
}

@immutable
class _SvgImage {
  _SvgImage({
    @required this.image,
    @required this.name,
  });

  final Uint8List image;
  final String name;
}

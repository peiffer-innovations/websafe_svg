import 'dart:convert';
import 'dart:io';

void main() async {
  var dir = Directory('assets-src/svgs');
  var files = dir.listSync();

  var all = <String>[];
  for (var file in files) {
    var name = file.uri.pathSegments.last;

    await Process.run('svgcleaner', [
      'assets-src/svgs/$name',
      'assets/svgs/$name',
    ]);

    var outFile = File('assets/svgs/$name');

    // Some SVGs are already optimized so svgcleaner errors out.  In those
    // cases, just copy the original.
    if (!outFile.existsSync()) {
      var data = File(file.path).readAsStringSync();
      outFile.writeAsStringSync(data);
    }

    all.add(name);
  }

  var out = File('assets/all.json');
  var encoder = JsonEncoder.withIndent('  ');
  out.writeAsStringSync(encoder.convert(all));
}

import 'dart:convert';
import 'dart:io';

void main() async {
  final dir = Directory('assets-src/svgs');
  final files = dir.listSync();

  final all = <String>[];
  for (var file in files) {
    final name = file.uri.pathSegments.last;

    await Process.run('svgcleaner', [
      'assets-src/svgs/$name',
      'assets/svgs/$name',
    ]);

    final outFile = File('assets/svgs/$name');

    // Some SVGs are already optimized so svgcleaner errors out.  In those
    // cases, just copy the original.
    if (!outFile.existsSync()) {
      final data = File(file.path).readAsStringSync();
      outFile.writeAsStringSync(data);
    }

    all.add(name);
  }

  final out = File('assets/all.json');
  const encoder = JsonEncoder.withIndent('  ');
  out.writeAsStringSync(encoder.convert(all));
}

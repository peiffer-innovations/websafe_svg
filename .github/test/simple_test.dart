import 'package:test/test.dart';

import '../lib/src/websafe_platform.dart';

void main() {
  test('test', () {
    var websafePlatform = WebsafePlatform();
    expect(false, websafePlatform.isAndroid());
    expect(false, websafePlatform.isIOS());
    expect(false, websafePlatform.isWeb());
  });
}

import 'package:flutter_test/flutter_test.dart';

import 'package:chainblocks/chainblocks.dart' as cb;

void main() {
  test('load chainblocks native environment', () {
    final core = cb.Core();
    core.open();
    final node = cb.Node();
    node.dispose();
  });
}

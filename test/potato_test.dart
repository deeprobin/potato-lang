import 'dart:io';

import 'package:potato/potato.dart';
import 'package:test/test.dart';

void main() {
  test('exec', () {
   executeFile(new File("test.potato"));
  });
}

import 'dart:io';

import 'package:potato/potato.dart' as potato;

main(List<String> arguments) {
  potato.executeFile(new File(arguments[0]));
}

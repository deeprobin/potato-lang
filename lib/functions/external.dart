import 'dart:io';

import 'package:potato/functions/function.dart';
import 'package:potato/potato.dart';

class ExternalFunction extends PotatoFunction {
  @override
  execute(final List<String> args) {
    executeFile(new File(args[0]));
    return;
  }

  @override
  List<String> getCallers() {
    return ["ext", "include"];
  }
}
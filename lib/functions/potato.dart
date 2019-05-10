import 'dart:io';

import 'package:potato/functions/function.dart';

class ThePotatoFunction extends PotatoFunction {
  @override
  execute(final List<String> args) {
    stdout.writeln("Potatoww! (something like a dirty apple)");
  }

  @override
  List<String> getCallers() {
    return ["potato"];
  }
}
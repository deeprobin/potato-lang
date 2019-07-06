import 'dart:io';

import 'package:potato/potato.dart' as potato;
import 'package:args/args.dart';

main(List<String> arguments) async {
  var parser = new ArgParser();

  parser.addOption("input", abbr: 'i');
  var results = parser.parse(arguments);

  var dir = await potato.decompile(results["input"]);
  print("Decompiled to: " + dir);
}

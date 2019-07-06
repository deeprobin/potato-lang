import 'dart:io';

import 'package:potato/potato.dart' as potato;
import 'package:args/args.dart';

main(List<String> arguments) async {
  var parser = new ArgParser();
  
  parser.addMultiOption("input", abbr: 'i');
  parser.addOption("main", abbr: 'm');

  // out file ends in rule with .potatoplant
  parser.addOption("out", abbr: 'o');

  var results = parser.parse(arguments);
  
  await potato.compile(results["input"], results["main"], results["out"]);
  print("Compiled");
}

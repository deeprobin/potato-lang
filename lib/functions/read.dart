import 'dart:io';

import 'package:potato/functions/function.dart';
import 'package:potato/operator.dart';

// laying potatoes -> [in german] -> Kartoffeln legen
// todo: use this as var, for example(lay <varname> <value>): lay test 1
class ReadFunction extends PotatoFunction {
  @override
  execute(final List<String> args) {
    var read = stdin.readLineSync();
    stdout.write(read);
    if(args[0] == OPERATOR_TO) {
      for(PotatoFunction function in potatoFunctions) {
        for(String caller in function.getCallers()){
          if(caller == args[1]){
            return function.execute(args.skip(2).toList());
          }
        }
      }
    }
    return read;
  }

  @override
  List<String> getCallers() {
    return ["read"];
  }
}
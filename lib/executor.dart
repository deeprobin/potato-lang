import 'dart:io';

import 'package:potato/functions/function.dart';

class PotatoExecutor {

  execute(String code) {
    for(String line in code.split("\n")){
      if(line.startsWith("#!") || line.startsWith("÷÷")){
        continue;
      }
      List<String> arguments = line.split(" ");
      for(PotatoFunction function in potatoFunctions){
        for(String caller in function.getCallers()){
          if(caller == arguments[0]) {
            function.execute(arguments.skip(1).toList());
            continue;
          }
        }
      }
    }

  }

}
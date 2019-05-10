import 'package:potato/functions/function.dart';

import 'dart:io';

class PrintFunction extends PotatoFunction {
  @override
  execute(final List<String> args) {
    for(PotatoFunction function in potatoFunctions) {
      for(String caller in function.getCallers()){
        if(caller == args[0]){
          stdout.write(function.execute(args.skip(1).toList()));
          return;
        }
      }
    }
    return;
  }

  @override
  List<String> getCallers() {
    return ["print"];
  }
}

class PrintLineFunction extends PotatoFunction {
  @override
  execute(final List<String> args) {
    for(PotatoFunction function in potatoFunctions) {
      for(String caller in function.getCallers()){
        if(caller == args[0]){
          stdout.writeln(function.execute(args.skip(0).toList()));
          return;
        }
      }
    }
    return;
  }

  @override
  List<String> getCallers() {
    return ["println"];
  }
}

class SayFunction extends PotatoFunction {
  @override
  execute(final List<String> args) {
    stdout.writeln(args.join(" "));
    return;
  }

  @override
  List<String> getCallers() {
    return ["say"];
  }
}

class CryFunction extends PotatoFunction {
  @override
  execute(final List<String> args) {
    stderr.writeln(args.join(" "));
    return;
  }

  @override
  List<String> getCallers() {
    return ["cry"];
  }
}
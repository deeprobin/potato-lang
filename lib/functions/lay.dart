import 'package:potato/functions/function.dart';

// laying potatoes -> [in german] -> Kartoffeln legen
// todo: use this as var, for example(lay <varname> <value>): lay test 1
class LayFunction extends PotatoFunction {
  @override
  execute(final List<String> args) {
    
    return;
  }

  @override
  List<String> getCallers() {
    return ["lay"];
  }
}

// this is for deleting this "var"
class HoeFunction extends PotatoFunction {
  @override
  execute(final List<String> args) {
    
    return;
  }

  @override
  List<String> getCallers() {
    return ["hoe"];
  }
}
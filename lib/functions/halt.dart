import 'package:potato/functions/function.dart';
import "dart:io";

class HaltFunction extends PotatoFunction {
  @override
  execute(final List<String> args) {
    sleep(new Duration(milliseconds: int.parse(args[0])));
    return;
  }

  @override
  List<String> getCallers() {
    return ["halt", "delay", "sleep"];
  }
}
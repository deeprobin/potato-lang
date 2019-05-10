import 'package:potato/functions/function.dart';

class DirtFunction extends PotatoFunction {
  @override
  execute(final List<String> args) {
    return;
  }

  @override
  List<String> getCallers() {
    return ["dirt", "comment"];
  }
}
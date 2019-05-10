import 'package:potato/functions/function.dart';

class ColorFunction extends PotatoFunction {

// light colors have the prefix ~
// dark colors have the prefix *
// background colors have the suffix #
final _colors = {
  "black": 30,
  "red": 31,
  "green": 32,
  "yellow": 33,
  "blue": 34,
  "magenta": 35,
  "cyan": 36,
  "~gray": 37,
  "default": 39,
  "black#": 40,
  "red#": 41,
  "green#": 42,
  "yellow#": 43,
  "blue#": 44,
  "magenta#": 45,
  "cyan#": 46,
  "~gray#": 47,
  "default#": 49,
  "*gray": 90,
  "~red": 91,
  "~green": 92,
  "~yellow": 93,
  "~blue": 94,
  "~magenta": 95,
  "~cyan": 96,
  "white": 97,
  "*gray#": 100,
  "~red#": 101,
  "~green#": 102,
  "~yellow#": 103,
  "~blue#": 104,
  "~magenta#": 105,
  "~cyan#": 106,
  "white#": 107
};

  @override
  execute(final List<String> args) {
    return ("\e[" + _colors[args[0]].toString() + "m");
  }

  @override
  List<String> getCallers() {
    return ["color", "colour"];
  }
}
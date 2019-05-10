import 'package:potato/functions/color.dart';
import 'package:potato/functions/dirt.dart';
import 'package:potato/functions/external.dart';
import 'package:potato/functions/halt.dart';
import 'package:potato/functions/lay.dart';
import 'package:potato/functions/potato.dart';
import 'package:potato/functions/print.dart';
import 'package:potato/functions/read.dart';

abstract class PotatoFunction {
  List<String> getCallers();

  dynamic execute(final List<String> args);
}

final List<PotatoFunction> potatoFunctions = [
  new ThePotatoFunction(),
  new DirtFunction(),
  new HaltFunction(),
  new LayFunction(),
  new HoeFunction(),
  new SayFunction(),
  new CryFunction(),
  new PrintFunction(),
  new ExternalFunction(),
  new ColorFunction(),
  new ReadFunction(),
];
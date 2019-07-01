import 'dart:io';

import 'package:potato/compiler.dart';
import 'package:potato/executor.dart';

executeFile(File file){
  file.readAsString().then((contents) {
    execute(contents);
  });
}

execute(String code){
  new PotatoExecutor().execute(code);
}

compile(List<String> files, String mainFile, String outFile){
  new PotatoCompiler().compile(files, mainFile, outFile);
}
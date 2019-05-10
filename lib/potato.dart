import 'dart:io';

import 'package:potato/executor.dart';

executeFile(File file){
  file.readAsString().then((contents) {
    execute(contents);
  });
}

execute(String code){
  new PotatoExecutor().execute(code);
}
import 'dart:convert';
import 'dart:io';

import 'package:potato/compiler.dart';
import 'package:potato/executor.dart';

executeFile(File file) async {
  var x = file.path.endsWith(".potatoplant");
  if (x) {
    print("plant");
    String dir = await decompile(file.path);
    await new File(dir + "/manifest.json").readAsString().then((contents) {
      var decoded = json.decode(contents);
      var main = decoded["main"];
      executeFile(new File(dir + "/" + main));
    });
  } else {
    await file.readAsString().then((contents) {
      execute(contents);
    });
  }
}

execute(String code) {
  new PotatoExecutor().execute(code);
}

compile(List<String> files, String mainFile, String outFile) {
  new PotatoCompiler().compile(files, mainFile, outFile);
}

Future<String> decompile(String file) async {
  return await new PotatoCompiler().decompile(file);
}

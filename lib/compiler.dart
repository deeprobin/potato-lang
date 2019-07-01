import 'dart:convert';
import 'dart:io';
import 'package:archive/archive.dart';
import 'package:archive/archive_io.dart';
import 'package:random_string/random_string.dart';

class PotatoCompiler {
  compile(List<String> files, String mainFile, String outFile) async {
    var encoder = ZipFileEncoder();

  

  var metaFile = {
    "main": mainFile,
    "buildDate": new DateTime.now()
  };

  
  
  var dir = await Directory.systemTemp.createTemp('potato-compiler');
  var path = dir.path;
  File temp = new File('$path/' + randomAlphaNumeric(8) +'.file');
  await temp.writeAsString(jsonEncode(metaFile));

  encoder.create(outFile);
  encoder.addFile(temp, "manifest.json");
  
  await temp.delete();
  
  for(String file in files) {
    encoder.addFile(File(file));
  }
  encoder.close();
  }
}
import 'dart:convert';
import 'dart:io';
import 'package:archive/archive.dart';
import 'package:archive/archive_io.dart';
import 'package:random_string/random_string.dart';

class PotatoCompiler {
  compile(List<String> files, String mainFile, String outFile) async {
    var encoder = TarFileEncoder();

    var metaFile = {"main": mainFile, "buildDate": new DateTime.now().toIso8601String()};

    var dir = await Directory.systemTemp.createTemp('potato-compiler');
    var path = dir.path;
    File temp = new File('$path/' + randomAlphaNumeric(8) + '.tmp');
    await temp.writeAsString(jsonEncode(metaFile));

    encoder.create(outFile);
    encoder.addFile(temp, "manifest.json");

    await temp.delete();

    for (String file in files) {
      encoder.addFile(File(file));
    }
    encoder.close();
  }

  Future<String> decompile(String file) async {
    var dir = await Directory.systemTemp.createTemp('potato-decompiler');
    var path = dir.path + "/";
    List<int> bytes = File(file).readAsBytesSync();
    Archive archive = TarDecoder().decodeBytes(bytes);
    for (ArchiveFile file in archive) {
      String filename = file.name;
      if (file.isFile) {
        List<int> data = file.content;
        File(path + filename)
          ..createSync(recursive: true)
          ..writeAsBytesSync(data);
      } else {
        await Directory(path + filename).create(recursive: true);
      }
    }
    return path;
  }
}

import 'dart:async';
import 'dart:io';

Future<void> createDescriptions(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      var file = File('file/Async/$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print('File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}

void main() {
  const oneSecond = Duration(seconds: 1);
  int i = 1;

  Future<void> printWithDelay(String message) async {
    await Future.delayed(oneSecond);
    i++;
    print(message);
    if (i > 4) exit(0);
    await printWithDelay("$i Detik");
  }

  printWithDelay("$i Detik");

  var objects = ['object1', 'object2', 'object3'];

  createDescriptions(objects);
}

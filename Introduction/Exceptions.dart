import 'dart:io';

Future<void> describeFlyByObjects(List<String> flyByObjects) async {
  try {
    for (final object in flyByObjects) {
      var description = await File('file/Exceptions/$object.txt');
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flyByObjects.clear();
  }
}

void main() {
  var object = ['tes1', 'tes2'];
  describeFlyByObjects(object);
}

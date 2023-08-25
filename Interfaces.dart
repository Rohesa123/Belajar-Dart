import 'Class.dart';

class MockSpaceship implements Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  MockSpaceship(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  var voyager = MockSpaceship('Voyager I', DateTime(2004, 18, 3));
  voyager.describe();
}

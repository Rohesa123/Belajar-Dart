import 'Class.dart';

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, super.launchDate, this.altitude);

  Orbiter.unlaunched(String name, double altitude) : this(name, null, altitude);

  void describe() {
    print('Spacecraft: $name');

    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago) at $altitude');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  var tes = Orbiter('Voyager II', DateTime(2005, 18, 3), 1.5);
  tes.describe();

  var tes1 = Orbiter.unlaunched('Voyager II', 1.5);
  tes1.describe();
}

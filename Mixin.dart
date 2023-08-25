import 'Class.dart';

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, super.launchDate);

  PilotedCraft.unlaunched(String name) : this(name, null);
}

void main() {
  var tes = PilotedCraft('Voyager II', DateTime(2005, 18, 3));
  tes.astronauts = 10;
  tes.describeCrew();
}

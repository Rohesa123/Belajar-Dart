abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}

class Example extends Describable {
  @override
  void describe() {
    print('This is an example.');
  }
}

void main() {
  var tes = Example();
  tes.describeWithEmphasis();
}

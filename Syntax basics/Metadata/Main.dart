main() {
  var tes = Television('Rohesa');
  tes.turnOn();
}

@Todo("Dash", "Implement this function")
class Television {
  @Deprecated("use turnOn instead")
  void activate() {
    turnOn();
  }

  void turnOn() {
    if (nama == null) {
      print('Tidak punya nama');
    } else {
      print('Nama Saya $nama');
    }
  }

  String? nama;

  Television(this.nama) {}
}

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);

  @Todo("Dash", "Implement this function")
  void doSomething() {
    print('Do something');
  }
}

import 'Hello.dart' deferred as hello;

main() async {
  await hello.loadLibrary();
  hello.printGreeting();
}

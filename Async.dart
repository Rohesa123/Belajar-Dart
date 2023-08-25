import 'dart:async';
import 'dart:io';

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
}

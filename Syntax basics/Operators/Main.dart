main() {
  int i = 1;
  print(i++);
  print(++i);
  print(i--);
  print(--i);

  print((10 % 2 == 0) && (15 % 2 == 0));
  print((10 % 2 == 0) || (15 % 2 == 0));

  print("2 + 3 == 5 : " + (2 + 3 == 5 ? "true" : "false"));
  print("2 - 4 == -1 : " + (2 - 3 == -1 ? "true" : "false"));
  print("2 * 3 == 6 : " + (2 * 3 == 6 ? "true" : "false"));
  print("5 / 2 == 2.5 : " + (5 / 2 == 2.5 ? "true" : "false"));
  print("5 ~/ 2 == 2 : " + (5 ~/ 2 == 2 ? "true" : "false"));
  print("5 % 2 == 1 : " + (5 % 2 == 1 ? "true" : "false"));

  print('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
}
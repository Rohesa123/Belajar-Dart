import 'LateVariable.dart';

main() {
  // * Deklarasi Variabel
  var name = 'Bob';

  // * Deklarasi Variabel dengan type data
  Object objectName = 'Bob';
  String stringName = 'Bob';

  // * Deklarasi Variabel (boleh kosong/null)
  String? tes = null;
  // ? String tes1 = null;

  // * Deklarasi Variabel dengan nilai default yaitu kosong/null
  int? angka;
  assert(angka == null);

  // * Deklarasi Variabel 'description' yang akan diinisialisasi setelah deklarasinya
  description = 'Hello, world';
  print(description);

  // * Deklarasi Variabel dengan data yang tidak bisa di ubah
  final finalName = 'bob';
  final String nickname = 'Bobby';
  const bar = [];
}

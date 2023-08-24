void main() {
  var year = 2002;

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  var object = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};

  for (final objects in object) {
    print("Data ke-$objects");
  }
}

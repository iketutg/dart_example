void main() {
  int i = 9;
  while (i > 1) {
    print('Baris $i');
    i--;
  }

  do {
    print("Do while $i");
  } while (i < 10);

  print(i);
}

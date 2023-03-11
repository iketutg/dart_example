void main() {
  for (int i = 0; i < 5; i++) {
    if (i % 2 == 0) {
      continue;
    }
    print("Ganjil $i");
  }

  for (int i = 0; i < 5; i++) {
    if (i == 4) {
      break;
    }
    print("Angka $i");
  }
}

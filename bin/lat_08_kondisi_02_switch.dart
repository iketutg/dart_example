import 'dart:io';

void main() {
  print("Switch number");
  stdout.write("Masukanlah bilangan bulan : ");
  int nilai = int.parse(stdin.readLineSync().toString());
  String angka;
  switch (nilai) {
    case 0:
      angka = "nol";
      break;
    case 1:
      angka = "satu";
      break;
    case 2:
      angka = "dua";
      break;
    case 3:
      angka = "tiga";
      break;
    default:
      angka = "not 0 - 3";
  }
  print(angka);
}

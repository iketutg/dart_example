import 'dart:io';

void main() {
  print("Switch String");
  stdout.write("Masukanlah bilangan bulan : ");
  String huruf = stdin.readLineSync().toString();
  double nilai;
  switch (huruf) {
    case 'A':
      nilai = 4.0;
      break;
    case 'B':
      nilai = 3.5;
      break;
    case 'C':
      nilai = 3.0;
      break;
    default:
      nilai = 2.0;
  }
  print(nilai);
}

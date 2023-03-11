import 'dart:io';

void main() {
  int a;

  stdout.write("Masukanlah bilangan bulan : ");
  a = int.parse(stdin.readLineSync().toString());

  if (a > 10) {
    print("A > 10");
  }

  stdout.write("Masukanlah bilangan bulan : ");
  int nilai = int.parse(stdin.readLineSync().toString());
  String grade;

  if (nilai > 95) {
    grade = "A";
  } else if (nilai > 80 && nilai <= 95) {
    grade = "B";
  } else if (nilai > 65 && nilai <= 80) {
    grade = "C";
  } else {
    grade = "D";
  }
  print(grade);
}

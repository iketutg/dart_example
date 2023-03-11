import 'dart:math';

/**
 * Fungsi 
 * Fungsi tanpa nilai balik
 * Fungsi dengan nilai balik
 * 
 */
///
void main() {
  //1. fungsi bawaan
  double a;
  a = sqrt(25.0);
  print(a);
  print(pow(2, 5));
  ////////////////////////////////////////////////////////////////

  //2. fungsi tanpa return
  echo('Hello');
  echo(100);
  echo(10.5);
  echo([10, 20, 40, 30, 50]);
  echo({"Name": "iketutg", "saldo": 10000});
  ////////////////////////////////////////////////////////////////
  //3. return value
  double disc = getDiscount(10000);
  print(disc);
  ////////////////////////////////////////////////////////////////
  //4. menggunakan tanta => mendifiniskan fungsi
  disc = getPotongan(100000);
  print(disc);
  //4
  print(' gabung : ${gabung("Hallo", "Jakarta")}');
  //4
  print(' odd : ${odd(10)}');
  ////////////////////////////////////////////////////////////////
  ///
  ///
  print(cetak());

  print(cetak2("cetak 2"));
}

//2. fungsi tanpa nilai balik
void echo(dynamic value) {
  print(value.toString());
}

//3. fungsi dengan nilai balik
double getDiscount(double amount) {
  return amount * 10 / 100;
}

//4.Fungsi arrow / lambda Expression
double getPotongan(double amount) => amount * 10 / 100;

//4 Fungsi arrow
String gabung(String s1, String s2) => s1 + s2;

//4 Fungsi arrow
bool odd(int x) => x.isOdd;

//tanpa void 
cetak(){
  return 'ha.ha.';
}


cetak2(String data) {
  return 'ha.ha. : $data';
}

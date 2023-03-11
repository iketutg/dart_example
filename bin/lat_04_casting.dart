void main() {
  //casting
  /*
  1. Explicit Casting
  Explicit casting adalah proses casting yang dilakukan dengan cara 
  memanggil fungsi konversi tipe data tertentu 
  (seperti toInt(), toDouble(), toString(), dll) 
  atau dengan menggunakan sintaksis (tipeData) variabel.
  */
  double x = 10.5;
  int y = x.toInt();
  print(y);

  String s = "123";
  int n = int.parse(s);
  print(n);

  int a = 5;
  double b = a.toDouble();
  print(b);

  double c = 3.1415;
  int d = c.round();
  print(d);

  double e = 2.71828;
  int f = (e * 1000).toInt();
  print(f);

  /********************************
  Implicit Casting
  proses casting yang dilakukan secara otomatis oleh Dart. 
  Dart akan mencoba untuk melakukan konversi tipe data secara otomatis 
  jika tipe data yang diharapkan adalah sub-tipe dari tipe data asal.
  
   */

  int a1 = 10;
  //error 
  //double b1 = a1;
  
  double b1 = a1.toDouble(); // error
  print(b1);

  int c1 = 3;
  double d1 = 2.5;
  double e1 = c1 + d1;
  print(e1);

  String s1 = "Hello, " + "world!";
  print(s1);
}

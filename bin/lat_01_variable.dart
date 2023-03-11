void main() {
  //declaration variable
  int a;
  double b;
  String c;
  a = 10;
  b = 10.0;
  c = "hello";

  print(a);
  print(b);
  print(c);
  /*
  Variable yang telah di declaration tdk dpt berubah dengan value tipe berbeda
  contoh variable a , b, c  
  */
  // a = 1.0; // false
  // b = 1; //false
  // c = 10; //

/**
 * Tipe Nullable
 */
  print('======Tipe Nullable============================================');
  int? x, y = 10, z;
  print(x);
  print(y);
  print(z);
  print('================================================================');

/**
 * declarasi yang nilainya bisa dinamis 
 */

  var angka = 10; // sebelumnya bisa bersifat dinamis new version 2.17 can't

  print('Nilai angka \t:' + angka.toString());
  print('Tipe angka \t:' + angka.runtimeType.toString());

  // angka = 10.5;
  // print('Nilai angka \t:' + angka.toString());
  // print('Tipe angka \t:' + angka.runtimeType.toString());
  print('======Name Object============');
/**
 * declarasi menggunakan object  
 */
  Object nameObject;
  nameObject = "test";
  print('nameObject value \t:' + nameObject.toString());
  print('nameObject tipe \t:' + nameObject.runtimeType.toString());

  // tipenya berubah ;
  nameObject = 10;
  print('nameObject value \t:' + nameObject.toString());
  print('nameObject tipe \t:' + nameObject.runtimeType.toString());

  print('======Name Object============');

/**
 * declarasi menggunakan dynamic  
 */
  print('======dynamic============');
  dynamic variable = 10;
  print(variable);

  variable = true;
  print(variable);

  variable = "ketut";
  print(variable);
  print('======dynamic============');

  /** 
   * Global Variable dan local Variable 
   *  Global = declaration diluar function yang bisa diakses siapa saja 
   *  Local = declaration yang hanya bisa di akses dalam function tesebut
  */
}

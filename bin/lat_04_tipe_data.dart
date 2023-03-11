import 'dart:io';

void main() {
  //example read from keyboar / input
  //int x;
  //stdout.write("Input number real: ");
  // x = int.parse(stdin.readLineSync().toString());
  // print('a : $x have tipe ${x.runtimeType.toString()}');

  const VERSION = "1.0.0";
  const String TIPE_CUSTOMER = 'LOYAL';
  print(VERSION);
  print(TIPE_CUSTOMER);

  final String TIPE_RUMAH = 'SEDERHANA';
  final MAX_CHARACTER_LENGTH = 10;
  print(TIPE_RUMAH);
  print(MAX_CHARACTER_LENGTH);

  //Tipe data dikelompokan menjadi :
  //Tipe bilangan, teks , logika, list , map dan simbol (tidak dibahas)

  //1. Tipe Bilangan
  //1.1 Tipe int
  int dec = 255;
  int hex1 = 0xff;
  int hex2 = 0x1A;
  //dart not supported biner , octal ;
  print('dec : $dec, hex1 : $hex1, hex2 :  $hex2');
  //1.2 Tipe double decimal
  double da = 75.5;
  double db = 1.2e2;
  double dc = 1.2E-5;
  print('double da : $da, db : $db, dc :  $dc');
  //1.2 Tipe num bisa berisikan bilangan ril(decimal) atau bilang bulat
  num xnum = 1;
  num ynum = 10.5;
  print('tipe num xnum : $xnum , ynum : $ynum');

  //2. Tipe text atau tipe string dpt dibuat menggunakan 3 cara
  // - mengunakan tanda petik tunggal
  // - menggunakan tanda petik ganda
  // - menggunkan tanda petik tunggal atau tanda petik ganda dengan 3 kali
  //   (digunakan membuat teks dengan jumlah lebih dari satu baris)
  String sName = 'Dart';
  String sAlamat = "Jalan Flutter";
  String title = ''' Halo ini adalah judul
                    ini hanya testing belaka''';
  String description = """ ini adalah keterangan 
                           baris kedua 
                           baris ketiga """;
  print(sName);
  print(sAlamat);
  print(title);
  print(description);

  //3. Tipe data logika
  exampleTipeboolean();

  //convert string to int , double 
  var a, b, c ;
  a= 10 ; 
  b = '4'; 
  c = a +  int.parse(b) ;
  print("convert string = $c");
}

exampleTipeboolean() {
  for (int i = 0; i < 10; i++) {
    stdout.write('$i adalah bilang ');
    stdout.writeln(odd(i) ? 'ganji' : 'genap');
  }
}

// single 
bool odd(int x) => x % 2 == 1;

//multi line 
bool odds(int x) {
  if (x % 2 == 1) {
    return true;
  }
  return false;
}

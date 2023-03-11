import 'dart:io';

/*
 * 1. parameter dengan option not default
 * 2. parameter opsional dengan nilai default
 * 3. fungsi with parameter map
 * 4.  
 * 
 * 
 */


void main() {
  //Fungsi
  cetak();
  //parameter
  cetakParam("ketut", 3);

  printString("Halo");

  printString("IKetutG", 4);
  //////////////////////////////
  //parameter dengan option not default
  cetakString(" data ", 4, false);
  cetakString('Dart', 3, false);
  //////////////////////////////
  //parameter opsional dengan nilai default
  printStringParam('Ketut');

  printStringParam('Gunawan', 5);

  printStringParam1('Dart');

  //parameter optional dengan key
  printStringParam1('Flutter', n: 2);
  printStringParam1('Android', newLine: true);
    //////////////////////////////
    ///
 // function dengan key 
  var thing = funcOption("IKetut Gunawan", alamat: "Tangerang");
  print("test func = $thing");

  var thing2 = funcOption("IKetut Gunawan");
  print("test func = $thing2");

  var thing3 = funcOption("IKetut Gunawan", saldo: 100, alamat: "Jkt");
  print("test func = $thing3");

  //////////////////////////////
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  print(' real : $list');
  list = reverse(list);
  print(' after reverse : $list');
  //////////////////////////////
  ///fungsi with parameter map
  Map<String, int> parameter = {
    'Durian': 100,
    'Mangga': 10,
    'Jeruk': 20,
  };
  print('Cetak element: ');
  printMap(parameter);


  
}

// fungsi dengan map
void printMap(Map<String, int> map) {
  //fungsi anonymous 
  map.forEach((key, value) {
    print('key : $key ,  value : $value');
  });
}

///parameter dengan list
List<int> reverse(List<int> list) {
  List<int> result = [];
  for (int i = list.length - 1; i >= 0; i--) {
    result.add(list[i]);
  }
  return result;
}


funcOption(String name, {alamat, int saldo=0}){
  return "Name = $name , address = $alamat saldo = $saldo";
}

void printStringParam1(String s, {int n = 3, bool newLine = false}) {
  for (int i = 0; i < n; i++) {
    if (!newLine) {
      stdout.write('${i + 1}. $s\t');
    } else {
      stdout.writeln('${i + 1}. $s');
    }
  }
}

//parameter opsional dengan nilai default
void printStringParam(String s, [int n = 3]) {
  for (int i = 0; i < n; i++) {
    print('${i + 1}. $s');
  }
}

void cetakString(String data, [int? n, bool? newLine]) {
  n ??= 1;
  for (int i = 0; i < n; i++) {
    if (newLine == null) {
      stdout.write('${i + 1}. $data\t');
    } else {
      stdout.writeln('${i + 1}. $data\t');
    }
  }
}

//fungsi dengan parameter optional
void printString(String s, [int? n]) {
  //n ??= 1; // dibawah bisa diganti
  if (n == null) n = 1;
  for (int i = 0; i < n; i++) {
    print('${i + 1}, $s');
  }
}

// tanpa parameter
void cetak() {
  for (int i = 1; i < 5; i++) {
    print('${i + 1}. Dart');
  }
}

// menggunakan parameter
void cetakParam(String data, int loopmax) {
  for (int i = 1; i < loopmax; i++) {
    //print('$i +1 $data'); // menambahkan sebagai string
    print('${i + 1} $data');
  }
  //contoh 
  void _privateFunction() {
    print("this is a private function");
  }
}


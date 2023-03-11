import 'dart:isolate';

void main() async {
  var isolate = await Isolate.spawn(factorial, 10);
  ReceivePort receivePort = ReceivePort();
  isolate.addOnExitListener(receivePort.sendPort);

  var result = await receivePort.first;
  print('Result: $result');
}

void factorial(int n) {
  var result = 1;
  for (var i = 2; i <= n; i++) {
    result *= i;
  }
  print('Factorial of $n: $result');
  //return result;
}

/*
Pada contoh di atas, kita menggunakan fungsi Isolate.spawn untuk memulai sebuah isolate baru dengan fungsi factorial sebagai argumen. Fungsi factorial akan menerima sebuah angka dan menghitung faktorial dari angka tersebut.

Kemudian, kita membuat sebuah ReceivePort untuk menerima hasil dari isolate yang telah selesai menjalankan tugasnya. Kita juga menambahkan sebuah listener untuk mendeteksi ketika isolate telah selesai dan mengirimkan pesan ke ReceivePort.

Setelah itu, kita menunggu hingga kita menerima pesan pertama dari ReceivePort. Pesan tersebut akan berisi hasil dari perhitungan faktorial yang telah dilakukan oleh isolate. Hasil perhitungan tersebut kemudian dicetak ke konsol.

Pada contoh di atas, kita hanya menggunakan satu isolate untuk menghitung faktorial. Namun, kita bisa membuat beberapa isolate baru untuk menghitung faktorial secara paralel dengan menggunakan perulangan for atau cara lainnya.
*/
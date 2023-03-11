class Singleton {
  static final Singleton _instance = Singleton._internal();

  factory Singleton() {
    return _instance;
  }

  Singleton._internal() {
    print('Singleton instance created.');
  }

  void doSomething() {
    print('Doing something...');
  }
}
/*
Pada contoh di atas, kita memiliki kelas Singleton yang menggunakan Singleton pattern. Kita menggunakan metode factory untuk membuat instance dari Singleton. Dalam metode factory, kita mengembalikan instance _instance jika sudah ada, atau membuat instance baru jika belum ada.

Kita juga menggunakan constructor Singleton._internal() yang hanya dapat diakses oleh kelas Singleton sendiri. Constructor ini akan dipanggil saat pertama kali membuat instance dari Singleton. Kita dapat menggunakan constructor ini untuk melakukan inisialisasi saat pertama kali membuat instance.

Metode doSomething digunakan untuk melakukan tindakan pada instance Singleton.

Untuk memanggil metode doSomething, kita dapat menggunakan contoh kode berikut:
*/


void main() {
  final singleton1 = Singleton();
  final singleton2 = Singleton();

  print(singleton1 == singleton2); // true
  singleton1.doSomething();
}

/*
Pada contoh di atas, kita membuat dua instance dari Singleton. Karena kita menggunakan Singleton pattern, maka kedua instance tersebut sebenarnya adalah instance yang sama. Kita dapat memeriksa hal ini dengan membandingkan kedua instance menggunakan operator ==, yang akan menghasilkan nilai true.

Kita juga memanggil metode doSomething pada instance singleton1. Karena kedua instance adalah instance yang sama, maka hasilnya akan sama jika kita memanggil metode doSomething pada instance singleton2.
*/


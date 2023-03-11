/*
yield digunakan untk konteks generator fungsi dan iterator
untuk menghasilkan suatu nilai dari fungsi generator dan memberikan kontrol
ke pada pemanggil untuk menjutkan eksekusi setelah nilai tersebut di hasilkan.
*/
void main() async {
  
  var numbers  = countNumbers(10);
  
  //proses nilai yang dihasilkan oleh fungsi 
  for (var angka in numbers) {
    print(angka);
  }

  // contoh kita mengontrol fungsi countNumbers
  // for (var angka in numbers) {
  //   if (angka == 5) {
  //     break;
  //   }
  //   print(angka);
  // }
  
  print("Selesai"); // akan di cetak lebih dahulu 
}

Iterable<int> countNumbers(int n) sync* {
  for (var i = 0; i < n; i++) {
    print("looping didalam function $i");
    yield i;
  }
}
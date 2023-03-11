void main(){
  /*** 
  Fizzbuzz adalah sebuah permainan yang sering digunakan 
  dalam wawancara kerja sebagai tes kemampuan pemrograman. 
  Permainan ini berjalan sebagai berikut:
  Mencetak angka dari 1 sampai 100
  Jika angka itu habis dibagi 3, maka cetak "Fizz" sebagai gantinya
  Jika angka itu habis dibagi 5, maka cetak "Buzz" sebagai gantinya
  Jika angka itu habis dibagi 3 dan 5, maka cetak "FizzBuzz" sebagai gantinya
  */
  
  fizBuzFor(100);

  fizBuzzWhile(100);
}

fizBuzzWhile(int num){
  var i = 1 ; 
  while (i < num) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    } else if (i % 3 == 0) {
      print("Fizz");
    } else if (i % 5 == 0) {
      print("Buzz");
    } else {
      print(i);
    }
    i++;
  }
}
fizBuzFor(int num){
  for (int i = 1; i <= num; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    } else if (i % 3 == 0) {
      print("Fizz");
    } else if (i % 5 == 0) {
      print("Buzz");
    } else {
      print(i);
    }
  }
}
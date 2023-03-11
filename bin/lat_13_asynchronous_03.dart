/*
bjek yang merepresentasikan urutan data yang diproduksi secara asynchronous. 
Stream biasanya digunakan untuk memproses data yang besar atau berkelanjutan, 
seperti streaming data dari internet atau data sensor.
*/
void main() async {
  print("Mulai"); 
  var datastream  = countNumbers();
  //print(stream);
  datastream.listen((angka) {
    print(angka); 
  });
  print("Selesai"); // akan di cetak lebih dahulu 
}

Stream<int> countNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1)); // di berikan jeda satu detik
    yield i;
  }
}
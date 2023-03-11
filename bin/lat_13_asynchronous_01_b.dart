import 'package:http/http.dart' as http;

/*
Di Dart, Future adalah sebuah abstraksi yang merepresentasikan nilai yang akan tersedia pada waktu yang tidak pasti atau hasil operasi yang tidak langsung tersedia. Future digunakan untuk menangani operasi yang membutuhkan waktu lama seperti membaca data dari jaringan, mengambil data dari database, atau melakukan operasi asinkron lainnya.

Future di Dart juga merupakan bagian dari konsep pemrograman asinkron, yang memungkinkan program untuk tetap berjalan sementara operasi asinkron dilakukan secara non-blokir di latar belakang. Future memiliki dua jenis, yaitu completed dan uncompleted Future.

Completed Future: Future yang sudah selesai atau sudah memiliki hasil nilai.

Uncompleted Future: Future yang belum selesai atau belum memiliki hasil nilai.

Future juga dapat di-combine dan di-chain dengan metode seperti then(), catchError(), dan whenComplete(). Metode then() digunakan untuk menentukan tindakan yang akan dijalankan setelah Future selesai. Sedangkan metode catchError() digunakan untuk menangani kesalahan yang terjadi saat Future dijalankan. Metode whenComplete() digunakan untuk menentukan tindakan yang akan dijalankan saat Future sudah selesai, baik berhasil atau gagal.
 */ 

Future<String> getData() async {
  var url = 'http://localhost:3004/info';
  var response = await http.get(Uri.parse(url));
  return response.body;
}
void main() {
  getData().then((data) {
    print(data);
  }).catchError((error) {
    print("Error : $error");
  }).whenComplete((){
    print("done fetching data");
  });
  print("Task 3");
  print("Selesai");
}

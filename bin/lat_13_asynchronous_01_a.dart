/*
Future adalah objek yang merepresentasikan hasil dari sebuah operasi 
yang mungkin memakan waktu. Ketika sebuah operasi membutuhkan waktu yang lama, 
kita dapat menggunakan Future untuk menjalankan operasi tersebut secara asynchronous. 
*/
void main() {
  print("Mulai"); 
  print("Task 1");
  print("Task 2");
  getData().then((data) {
    print(data);
  });
  print("Task 3");
  print("Selesai");
}

Future<String> getData() async {
  print("Task getData Process");
  await Future.delayed(Duration(seconds: 1));
  print("Task getData after process");
  print("task fetchTime 1");
  return "task fetchTime response";
}
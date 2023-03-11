/*
Async/await adalah cara kita untuk menulis kode asynchronous lebih mudah dibaca 
dan dimengerti. Async digunakan untuk menandai sebuah fungsi yang melakukan 
operasi asynchronous, sementara await digunakan untuk menunggu hasil dari operasi
*/
void main() async {
  print("Mulai");
  print("Task 1");
  print("Task 2");
  var data = await getData();
  print(data);
  print("Task 3");
  print("Selesai");
}

Future<String> getData() async {
  print("Task getData Process");
  await Future.delayed(Duration(seconds: 1));
  print("Task getData after process");
  return "task fetchTime response";
}
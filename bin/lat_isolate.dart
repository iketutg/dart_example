import 'dart:isolate';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
//import 'package:html/dom.dart';


/*----------------------------------------------------------------
Untuk melakukan scraping data secara paralel pada Dart, kita dapat menggunakan package isolate yang memungkinkan kita untuk menjalankan kode Dart secara paralel dalam isolate terpisah. Isolate adalah unit pemrosesan yang terpisah dan independen dari isolate lainnya di dalam sebuah program Dart.

Berikut ini adalah contoh penggunaan package isolate pada Dart untuk melakukan scraping data secara paralel:
*/

void main() async {
  List<String> urls = [
    'https://jsonplaceholder.typicode.com/todos/1',
    'https://jsonplaceholder.typicode.com/todos/2',
    'https://jsonplaceholder.typicode.com/todos/3',
    'https://jsonplaceholder.typicode.com/todos/4',
    'https://jsonplaceholder.typicode.com/todos/5',
  ];

  List<Isolate> isolates = [];
  ReceivePort receivePort = ReceivePort();

  for (String url in urls) {
    var isolate = await Isolate.spawn(scrapeData, [url, receivePort.sendPort]);
    isolates.add(isolate);
  }

  List<dynamic> results = await receivePort.toList();
  print(results);

  for (Isolate isolate in isolates) {
    isolate.kill();
  }
}

void scrapeData(List<dynamic> args) async {
  SendPort sendPort = args[1];
  var url = Uri.parse(args[0]);
  var response = await http.get(url);
  var document = parser.parse(response.body);
  var title = document.querySelector('title'); 
  //String? title = title.text;
  //String title = document.querySelector('title').text;
  sendPort.send(title);
}

/**
 * 
 Pada contoh di atas, kita membuat sebuah list urls yang berisi beberapa URL yang ingin kita scrap. Selanjutnya, kita membuat sebuah list isolates dan sebuah ReceivePort untuk menerima hasil dari setiap isolate yang telah selesai menjalankan tugasnya.

Kemudian, kita menggunakan perulangan for untuk memulai sebuah isolate baru untuk setiap URL yang ada dalam list urls. Isolate baru tersebut diinisialisasi dengan fungsi scrapeData yang akan menerima sebuah list berisi URL dan SendPort yang akan digunakan untuk mengirim hasil scraping data ke ReceivePort.

Dalam fungsi scrapeData, kita mengakses URL dengan menggunakan package http dan melakukan parsing HTML menggunakan package html/parser. Setelah itu, kita mengambil judul (title) dari dokumen HTML yang telah di-scrap dan mengirimnya ke ReceivePort menggunakan sendPort.send(title).

Setelah semua isolate telah selesai menjalankan tugasnya, kita menggunakan perintah await receivePort.toList() untuk mengambil semua hasil scraping data yang telah dikirimkan ke ReceivePort. Hasil scraping data tersebut kemudian dicetak ke konsol.

Terakhir, kita menghentikan semua isolate yang telah berjalan dengan menggunakan perintah isolate.kill().
 */

// Transform Future 
Future<String> getData() {
  return Future.value("Halo Dart Flutter");
}
void main() {
   getData()
  .then((data) => data.split(" "))
  .then((data) => data.reversed)
  .then((data) => data.map((e) => e.toUpperCase()))
  .then((data) => print(data));
  print("Selesai");
}

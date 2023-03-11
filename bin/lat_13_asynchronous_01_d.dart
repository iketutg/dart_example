
// Transform Future 
Future<String> getData() {
  return Future.error(Exception("Server Is Down"));
}
void main() {
   getData()
   .then((value) => print(value))
   .catchError((onError) => print("Error with message ${onError.message}"))
   .whenComplete(() => print("Finish"));
   
  print("Selesai");
}

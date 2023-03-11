void main() {
  for (int i = 0; i < 5; i++) {
    print("Baris for $i");
  }

  // for in
  List<int> list = [10, 20, 30, 40, 50];
  for (int element in list) {
    print("Baris $element");
  }

  var list2 = [1, 2, 3, 4, 5];
  for (var i in list2) {
    print("List2 $i");
  }

  // ignore: avoid_function_literals_in_foreach_calls
  list.forEach((element) {
    print("Baris foreach $element");
  });

  Map<String, String> map = {
    'name': 'IKetutG',
    'address': 'Jalan Pidana',
    'title': 'Engineer'
  };

  map.forEach((key, value) {
    print("$key: $value");
  });
}

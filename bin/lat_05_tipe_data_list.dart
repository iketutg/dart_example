void main() {
  //4. Tipe data List
  exampleTipeList();
}

exampleTipeList() {
  print('###Start Tipe List###');

  List<int> list = [10, 15, 20];
  print(list);
  print(list[0]);
  print(list[2]);
  print(list.first); //10
  print(list.last); //20
  print(list.isEmpty);
  print(list.isNotEmpty);

  //list kosong
  List<int> lstkosong = [];
  //List<int> lstkosong = new List<int>(); //deprecated
  for (int i = 0; i < 3; i++) {
    int value = i + 1 * 10;
    lstkosong.add(value);
  }
  print(' lstkosong length : ${lstkosong.length}, lstkosong : $lstkosong');

  //change value ;
  lstkosong[0] = 100;
  print(
      'change value lstkosong length : ${lstkosong.length}, lstkosong : $lstkosong');

  //remove dengan element value 11
  lstkosong.remove(11);
  print(
      'remove lstkosong length : ${lstkosong.length}, lstkosong : $lstkosong');

  lstkosong.add(100);
  lstkosong.add(101);
  lstkosong.add(102);
  print('add lstkosong length : ${lstkosong.length}, lstkosong : $lstkosong');

  lstkosong.remove(100); // akan meremove index yang awal
  print(
      'remove again lstkosong length : ${lstkosong.length}, lstkosong : $lstkosong');

  lstkosong.removeAt(1);
  print(
      'remove at index 1 lstkosong length : ${lstkosong.length}, lstkosong : $lstkosong');

  lstkosong.removeLast();
  print(
      'remove last, lstkosong length : ${lstkosong.length}, lstkosong : $lstkosong');

  lstkosong.addAll([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]);
  print(
      'Add All, lstkosong length : ${lstkosong.length}, lstkosong : $lstkosong');

  //dihapus index 0 s/d 1 dan index 2 tidak dihapus
  lstkosong.removeRange(0, 2);
  print(
      'Remove range, lstkosong length : ${lstkosong.length}, lstkosong : $lstkosong');

  //mengahapus where element value
  lstkosong.removeWhere((element) => element.isOdd);
  print(
      'Remove where isOdd, lstkosong length : ${lstkosong.length}, lstkosong : $lstkosong');

  lstkosong.removeWhere((element) => element.isEven);
  print(
      'Remove where isEven, lstkosong length : ${lstkosong.length}, lstkosong : $lstkosong');

  //element.isFinete
  //element.isInfinete
  //element.isNan
  //element.isNegative

  print('###End Tipe List###');
}

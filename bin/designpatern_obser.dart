class Counter {
  int _count = 0;
  final _countController = StreamController<int>();

  Stream<int> get countStream => _countController.stream;

  void increment() {
    _count++;
    _countController.add(_count);
  }
}

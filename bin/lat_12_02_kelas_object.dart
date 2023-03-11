class Position {
  int a = 0; // harus diberi value atau int? a //sebagai null
  int b = 0; // harus diberi value atau int? a //sebagai null

  //method
  //jika parameter berbeda akan ada warning
  void setPosition(int a, int b) {
    //a = x;
    //b = y;

    //menggunakan this
    this.a = a;
    this.b = b;
  }
}

void main() {
  Position pos = Position();
  //memangil method
  pos.setPosition(10, 20);
  print('Titik a terleteak di kordinat (${pos.a},${pos.b})');
}

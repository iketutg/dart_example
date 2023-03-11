class Point {
  int x = 0;
  int y = 0;
}

void main() {
  //mendeklarasikan variable bertipe point
  Point a;

  // membuat object dari kelas Point
  a = Point();

  // mengakses atribute point
  a.x = 10;
  a.y = 20;

  print('Titik a terleteak di kordinat (${a.x},${a.y})');
}

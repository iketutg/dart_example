//Polimorpihsme banyak bentuk
class Nasabah {
  String name;
  String cif;
  Nasabah(this.name, this.cif);
}

class Prakerja extends Nasabah {
  Prakerja(name, cif) : super(name, cif);
}

class Koperasi extends Nasabah {
  Koperasi(name, cif) : super(name, cif);
}

/*
 * Membuat OOP Rumah
 *   
 */
void main() {
  Nasabah nasabah = Nasabah("iketutg", "0001001");
  print(nasabah);

  //nasabah mempunyai banyak bentuk
  nasabah = Prakerja("Ali", "00002001");
  print(nasabah);

  nasabah = Koperasi("Joko", "00003001");
  print(nasabah);
}

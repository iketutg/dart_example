
class Rumah{
  int panjang; 
  int lebar; 
  String nameTipeRumah; 

  Rumah(this.panjang, this.lebar, this.nameTipeRumah);

  int getHarga(){
    var luas = _getLuasRumah(panjang, lebar);
    int hargadasar; 
      switch (luas) {
        case 100:
          hargadasar = 500000000; 
          break;
        case 60:   
          hargadasar = 100000000; 
          break;
        default:
          hargadasar = 50000000; 
      }
    
    var optHarga = _getAdditionalAmt(nameTipeRumah);
    return hargadasar + optHarga; 
  } 

  
  int _getLuasRumah(int panjang, int lebar) {
    print("funct private get Rumah");
    return panjang * lebar;
  }

  int _getAdditionalAmt(nameTipe){ 
    if (nameTipe == "RSS") {
      return -1000000;
    }else { 
      return 2000000;
    }
  }
}




/*
 * Membuat OOP Rumah
 *  - blue print Rumah 
 *  - Panjang  
 *  - Lebar 
 *  - NameTipeRumah 
 *  - Harga 
 *  - JumlahKamar
 *  - JumlahKamarMandi 
 */ 
void main(){

  Rumah rumah1 = Rumah(10, 10, "mewah");
  var harga = rumah1.getHarga();
  print("Harga Rumah = $harga");

   Rumah rumah2 = Rumah(6, 30, "mewah");
  var harga2 = rumah2.getHarga();
  print("Harga Rumah = $harga2");
}
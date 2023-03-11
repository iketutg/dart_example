
class Bapak {
  void music(){
    print("Saya suka music");
  }
}

class Anak extends Bapak {
  void playDrum(){
    print("I like play drum");
  }
}

/*
 * Membuat OOP Rumah
 *  - blue print Rumah 
 *  - Panjang   
 */ 
void main(){

  Anak hobi = Anak(); 

  hobi.playDrum();
  
  hobi.music();
}
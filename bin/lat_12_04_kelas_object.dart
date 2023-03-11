//Membuat Operator 


class Subsidi {
  int nilai = 0;

  Subsidi operator +(Subsidi subsidi){
    var resp = Subsidi();
    resp.nilai = nilai + subsidi.nilai;
    return resp;
  }

}


void main() {
  var subsidi1 = Subsidi();
  subsidi1.nilai = 1000; 

  var subsidi2 = Subsidi(); 
  subsidi2.nilai = 2000; 

  var allSubisidi = subsidi1 + subsidi2;

  print("Total Subsidi : ${allSubisidi.nilai}");
}
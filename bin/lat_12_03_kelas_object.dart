// Constructor
void main() {
  Customer cust = Customer("IKetut", "081234567890", 1000.0);
  cust.showData();

  cust = Customer("Gunawan", "081234567891", 0.0);
  cust.showData();

  // Contoh Penggunaan Extension Method
  int amount = 50000;
  var point = cust.getPoint(amount);
  print(" Point $point dari transaksi amount = $amount");

  //implement named constructor
  var cust1 = Customer.withAddress("Tangerang");
  print("Named Custroctur ${cust1.address}");

  var cust2 = Customer.withName("Testing");
  print("Named Custroctur ${cust2.name}");

  //Rederic Constrcutor
  var cust3 = Customer.hanyaName("Joko"); 
  print("Redirec Constructoer Name = ${cust3.name} , Balance = ${cust3.balance}");

  
}

class Customer {
  String? name, phonenumber;
  double? balance;
  String? address;

  //constructur hanya ada satu , tidak bisa overloading
  // tetapi kita bisa membuat lebih dari satu dengan nama yang berbeda
  Customer(String name, phonenumber, double balance) {
    // this -> mengakses Object / class saat ini
    // kalau tidak kita berarti menggunakan variable shadowing
    // name = name  // ini contoh shadowing maka name diatas tdk akan terubah
    this.name = name;
    this.phonenumber = phonenumber;
    this.balance = balance;
  }
  //constructur try this  (initializing formals parameters)
  // hanya bisa di gunakan di constructor tidak bisa di gunakan di method
  //Customer(String this.name, String this.phonenumber,  double this.balance);
  ///////////////

  //named constructor
  Customer.withAddress(this.address);

  //named constructor
  Customer.withName(this.name);

  //Redirect Constructor 
  // membuat redirect dengan kondisi memberikan saldo awal 
  Customer.hanyaName(String name) : this(name,"+62",100); 


  //Method
  void showData() {
    print("Nama = $name");
    print("Phonenumber = $phonenumber");
    print("Balance = $balance");

    print(
        "Data Customer , Name is $name phoneNumber is $phonenumber and have balance = $balance");
  }

  //Method Expression Body
  double getBalance() => 1000.0;
  // double getBalance() {
  //   return 1000.0;
  // }
  // Future<String> getPhoneNumber() async {
  //   return "0812";
  // }
}

// Class without initializ
// ketika kita tidak ingin menggunakan constructor yang mesti mewajibkan isi data
// makan jangan di definisikan constuctor nya
// remark constructor Customer menjadi method addData(String name, phonenumber, double balance)
// maka pada pemanggilannya bisa menggunakan
/* 
  Customer cust = Customer();
  cust.showData(); // walaupun isinya null 
  */

// Extension Method
extension ContohExMethod on Customer {
  double getPoint(int amount) {
    if (amount >= 10000 && amount < 50000) {
      return 100;
    } else if (amount >= 50000) {
      return 1000;
    } else {
      return 0;
    }
  }
}

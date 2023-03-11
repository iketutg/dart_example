// ignore_for_file: prefer_function_declarations_over_variables
import 'dart:math';

// Anonymous Function
//fungsi yang tidak diberi nama dan biasanya
//digunakan sebagai parameter pada fungsi lain
void main() {
  ////////////////////////////////////////////////////////////////
  //lambda / anonymous function

  var x = () {
    print('Function anonymous');
  };

  x();
  ////////////////////////////////////////////////////////////////
  // function
  var add = (double x, double y) {
    return (x + y);
  };

  // function
  var add2 = (double x, double y) => (x + y);

  //call
  var a = add(1, 2);
  print('Nilai variable a : $a');

  //call
  var b = add2(1, 2);
  print('Nilai variable b : $b');
  /////////////////////////
  ///Fungsi sebagai parameter fungsi lain

  //1
  double resOdd = kalkulator(10, 20, (x, y) {
    return x + y;
  });
  print('Reeturn res : $resOdd');

  //2
  double resMultiple = kalkulator(10, 20, (x, y) {
    return x * y;
  });
  print('Reeturn res : $resMultiple');

  //3
  double resDiv = kalkulator(10, 20, (x, y) {
    return x / y;
  });
  print('Reeturn res : $resDiv');

  //////////////////////////////
  ///definisi fungsi didalam fungsi lain
  print(' pythagorean(3.0, 5.0) : $pythagorean(3.0, 5.0)');

  //////////////////////////////
  ///fungsi rekusif
  print(' factorial(3) : $factorial(3)');

  List<int> numbers = [1, 2, 3, 4, 5];

  numbers.forEach((number) {});
  /////////////////////////////////////
  //parameter menggunakan function
  var angka1 = 10;
  var angka2 = 10;
  var hasil1 = funcMathOpr(angka1, angka2, (int i, int j) {
    return i + j;
  });
  print(hasil1);

  var hasil2 = funcMathOpr(angka1, angka2, (int i, int j) => i + j);
  print(hasil2);
  /////////////////////////////////////

}
// funct menggunakan parameter function 
int funcMathOpr(int x, int y, Function funcMath) {
  return funcMath(x, y);
}

//fungsi rekusif
int factorial(int n) {
  if (n == 0) return 1;
  return n * factorial(n - 1);
}

//definisi fungsi didalam fungsi lain
double pythagorean(double a, double b) {
  //fungsi local
  double pangkat(double x) {
    return x * x;
  }

  return sqrt(pangkat(a)) + sqrt(pangkat(b));
}

double add(double x, double y) => x + y;
double mul(double x, double y) => x * y;
double div(double x, double y) => x / y;

double kalkulator(double x, double y, Function operation) {
  return operation(x, y);
}

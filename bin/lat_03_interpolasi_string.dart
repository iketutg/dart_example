void main() {
  var x = 10;
  var y = 20;
  // call variables in string
  var result = 'Nilai a = $x dan nilai b = $y';
  print(result);

  var name = 'ketut';
  // calling method in string
  print('Interpolasi in string : ${name.toUpperCase()}');

  //when variable have char '$' , we must use format {}
  var $a = 5;
  var b$ = 10;
  print('Nilai a = ${$a} , b = ${b$}');
}

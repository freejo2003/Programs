void main() {
  print("hello world");
  print("-------Data Types------");
  int num1 = 10;
  double num2 = 20.22;
  String s = 'Freejo Jaison';
  String s1 = "K";
  print(num1);
  print(num2);
  print(s);
  print(s1);
  print(num1 + num2);
  print(
      "$s $num1"); //$ takes the value from the variable(Dart String interpolation)
  print("$s $s1");
//LIST
  print("---------LIST--------");
  List<int> numberList = [10, 11, 12, 13];
  print(numberList[0]); //index items as array
  print(numberList);
  List<String> names = ["hello", "world", "using", "Dart"];
  print(names);
  //there are some in-built functions for lists in dart
  names.add("Freejo");
  print(names);
  names.remove("world");
  print(names);
  print(names.length);
  //there are few more use "listname." a list will be present
  List data = [
    "hai",
    1,
    1.3,
    true
  ]; //dynamic use only when needed ,it reduces the performance.
  print(data);

  //MAP
  print("-------MAP----------");
  Map<String, String> person = {
    "name": "Freejo",
    "age": "20",
    "address": "Thrissur"
  };
  print(person);
  print(person["name"]);
  print(person["age"]);
  print(person["address"]);
}

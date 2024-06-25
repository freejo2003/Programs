void main() {
  print("Sum of 5 and 3");
  int result = sum(5, 3);
  print(result);
  print("Is 5 even?");
  bool res = even(5);
  if (res == true) {
    print("Yes");
  } else {
    print("No");
  }
}
int sum(int number1, int number2) {//function with parameter
  return number1 + number2;
}

bool even(int number1) {
  return number1.isEven;//use of inbuilt function
} 
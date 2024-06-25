void main() {
  printMessage();
}

void printMessage() async {
  await Future.delayed(Duration(seconds: 5));
  print("Hello after 5 seconds");
}

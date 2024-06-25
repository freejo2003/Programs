//dynamic: can change TYPE of the variable, & can change VALUE of the variable later in code.
// var: can't change TYPE of the variable, but can change the VALUE of the variable later in code

//const: Compile-time constant.
//final: Run-time constant.
void main() {
  print("----CONDITION-----");
  int number = 5;
  print("given number is $number");
  if (number == 2) {
    print("Number is equal to 2!");
  } else if (number == 5) {
    print("Number is equal to 5!");
  } else {
    print("Number is not equal to 2 or 5!");
  }

  print("-----SWITCH-----");
  String grade = "D";
  print("Grade is $grade");
  switch (grade) {
    case "A":
      print("Execellant");
      break;
    case "B":
      print("Good");
      break;
    case "C":
      print("Fair");
      break;
    case "D":
      print("Pass");
      break;
    default:
      print("Invalid grade");
  }
  print("----------LOOP---------");

  // Example 1: for loop
  print('FOR');
  for (var i = 1; i <= 5; i++) {
    print('Count: $i');
  }
  print('');

  // Example 2: for-in loop with list
  print('FOR-IN');
  List<String> fruits = ['apple', 'banana', 'cherry'];
  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }
  print('');

  // Example 3: while loop
  print('WHILE');
  int num = 1;
  while (num <= 3) {
    print('Number: $num');
    num++;
  }
  print('');

  // Example 4: do-while loop
  print('DO-WHILE');
  int countdown = 5;
  do {
    print('Countdown: $countdown');
    countdown--;
  } while (countdown > 0);
}

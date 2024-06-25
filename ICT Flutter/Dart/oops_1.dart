
import 'oops_1sub.dart';

class Sample {
  int count = 10;
  Sample(){
    print("Sample constructor");
  }
  void display() {
    print("Hello Sample class");
  }
}

void main() {
  Sample obj = Sample();//Sample() is a constructor-so it prints "sample constructor",Sample is className
  Sample2 obj2 = Sample2();
  print(obj.count);
  obj.display();//calling method from Sample class
  obj2.display2();
}

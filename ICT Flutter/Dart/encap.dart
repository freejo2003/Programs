
import 'encap2.dart';

void main()
{
  Counter obj = Counter();
  print(obj.count2);//this is just a normal variable
  // print(obj._count);//this does not work because it is a private variable
  print(obj.count);//this works because in encap2.dart we used getter
}
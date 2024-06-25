class Vehicle{
  String color;
  Vehicle(this.color);
  void getcolor(){
    print("The color of the vehicle is $color");
  }
}
class Car extends Vehicle{
  int doors;
  Car(String color, this.doors):super(color);
  void getdoors(){
    print("The car has $doors doors");
    }
    }

void main(){
  Car mycar = Car("Red", 4);
  mycar.getcolor();
  mycar.getdoors();
  Car mycar2=Car("green",4);
  mycar2.getcolor();
}
class Sample{
  int a;
  Sample(this.a);//Using this.a = a; ensures that the value passed to the constructor is assigned to the instance variable a.
  void prints(){
    print(a);
  }
}
void main(){
  Sample s = Sample(10);
  s.prints();
}

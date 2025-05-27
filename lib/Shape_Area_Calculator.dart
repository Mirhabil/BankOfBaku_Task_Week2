void main(){

  Circle circle=Circle(3);
  circle.area();
  circle.printDetails();
}

abstract class Shape{
  void area();
}

class Circle extends Shape with Logger implements Printable{
  int pi=3;
  int r;
  Circle(this.r);

  late int areaOfCircle;

  @override
  void area() {
    areaOfCircle=pi*r*r;
  }

  @override
  void printDetails() {
    Log("Circle");
    print(areaOfCircle);
  }

}

class Square extends Shape with Logger implements Printable{

  int a;
  late int areaOfSquare;
  Square(this.a);


  @override
  void area() {
    areaOfSquare=a*a;
  }

  @override
  void printDetails() {
    Log("Square");
    print(areaOfSquare);
  }

}

abstract class Printable{
  void printDetails();
}

mixin Logger{
  void Log(String nameOfShape){
    print("$nameOfShape Logged");
  }
}
void main() {

  Vehicle vehicle=Vehicle("Vehicle Brand", 2001);
  Car car=Car("Car Brand", 2002);
  Bike bike=Bike("Bike Brand", 2003);

  vehicle.startEngine();
  car.startEngine();
  bike.startEngine();
}

class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void startEngine() {
    print("Vehicle's engine started");
  }
}

class Car extends Vehicle {
  Car(super.brand, super.year);

  @override
  void startEngine() {
    print("Car's engin started");
  }
}

class Bike extends Vehicle {
  Bike(super.brand, super.year);

  @override
  void startEngine() {
    print("Bike's engine started");
  }
}


abstract class Vehicle {
  late int _speed;

  void move();

  void setSpeed(int speed) {
    _speed = speed;
  }
}

class Car extends Vehicle {
  @override
  void move() {
    print('The car is moving at $_speed km/h');
  }
}

void main() {
  Car myCar = Car();
  myCar.setSpeed(60);
  myCar.move();
}

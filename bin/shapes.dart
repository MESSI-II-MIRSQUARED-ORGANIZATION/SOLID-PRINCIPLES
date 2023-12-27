import 'dart:math';

abstract class ManageShapeInterface {
  calculate();
}

abstract class ShapeInterface {
  area();
}

abstract class SolidShapeInterface {
  volume();
}

class Circle implements ShapeInterface, ManageShapeInterface {
  double radius;

  Circle(this.radius);

  @override
  area() {
    return pi * pow(radius, 2);
  }

  @override
  calculate() {
    return area();
  }
}

class Square implements ShapeInterface, ManageShapeInterface {
  int length;

  Square(this.length);

  @override
  area() {
    return pow(length, 2);
  }

  @override
  calculate() {
    return area();
  }
}

class Car {
  int tires;
  Car(this.tires);
}

class Cuboid implements ShapeInterface, SolidShapeInterface {
  @override
  area() {
    // TODO: implement area
    throw UnimplementedError();
  }

  @override
  volume() {
    // TODO: implement volume
    throw UnimplementedError();
  }
}

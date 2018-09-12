// IMPLEMENTING AN INTERFACE

// The Dart language doesn't include an interface keyword because every class defines an interface.

// Add a CircleMock class that extends the Circle class:

import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if(type == "circle") {
      return Circle(2);
    }

    if(type == "square") {
      return Square(2);
    }

		// To trigger exception, don't implement a check for 'triangle'.
		throw 'Can\'t create $type.';
  }

  num get area;  
}

class CircleMock implements Circle{
  num area;
  num radius;

// Even though the CircleMock class doesn't define any behaviors, it's valid Dart—the analyzer raises no errors.
}

class Circle implements Shape{
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow((side), 2);
}

class Triangle implements Shape {
  final num side;
  Triangle(this.side);
  num get area => pow((side), 2) / 2;
}

void main() {
  print( new Shape("circle").area);
  print( new Shape("square").area);
  print( new Shape("triangle").area);
}
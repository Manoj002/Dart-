// CREATE A FACTORY:
// Factories, a commonly used design pattern in Java, have several advantages over direct object instantiation, 
// such as hiding the details of instantiation, providing the ability to return a subtype of the factory's 
// return type, and optionally returning an existing object rather than a new object.
//
// This step demonstrates two ways to implement a shape-creation factory:
// Option 1: Create a top-level function
// Option 2: Create a factory constructor
//
// For this exercise, you'll use the Shapes example, which instantiates shapes and prints their computed area:

import "dart:math";

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

void main() {
  final circle = Circle(2);
  final square = Square(2);
  print(circle.area);
  print(square.area);
}

// OBSERVATIONS:

// 1. Dart supports abstract classes.
// 2. You can define multiple classes in one file.
// 3. dart.math is one of Dart's core libraries. 
//    Other core libraries include dart:core, dart:async, dart:convert, and dart:collection.
// 4. In Dart 1.x, core library constants were uppercase (PI); in Dart 2, they're lowercase (pi).
// 5. This code includes two getters that compute a value:
//    num get area => pi * pow(radius, 2); // Circle
//    num get area => pow(side, 2); // Square
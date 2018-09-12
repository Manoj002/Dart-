// CREATE A FACTORY CONSTRUCTOR

// Use Dart's factory keyword to create a factory constructor.

// Add a factory constructor to the abstract Shape class
// 	abstract class Shape {
// 	factory Shape(String type) {
// 		if (type == 'circle') return Circle(2);
// 		if (type == 'square') return Square(2);
// 		throw 'Can\'t create $type.';
// 	}
// 	num get area;
// 	}

// Replace the first two lines of main() with the following code for instantiating the shapes:
// 	final circle = Shape('circle');
// 	final square = Shape('square');
//  Delete the shapeFactory() function that you added previously.

import "dart:math";

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

class Circle implements Shape{
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class Triangle implements Shape{
  final num side;
  Triangle(this.side);
  num get area => pow(side, 2) / 2;
}

void main() {
  try {
    print(new Shape('circle').area);
    print(new Shape('square').area);
    print(new Shape('triangle').area);
  } catch(err) {
    print(err);
  }
}
// CREATE A TOP LEVEL FUNCTION FOR FACTORY

// 	 Implement a factory as a top-level function by adding the following function 
//	 at the highest level (outside of any class):
//   code sample: 
//   	Shape shapeFactory(String type) {
//			if (type == 'circle') return Circle(2);
//			if (type == 'square') return Square(2);
//			throw 'Can\'t create $type.';
//		}

//   	Invoke the factory function by replacing the first two lines in the main() method:  
//      final circle = shapeFactory('circle');
//      final square = shapeFactory('square');

import "dart:math";

Shape shapeFactory(String type) {
  if(type == "circle") return Circle(2);
  if(type == "square") return Square(2);
  throw 'Can\'t create $type.';
}

abstract class Shape{
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
  final circle = shapeFactory("circle");
  final square = shapeFactory("square");
  print(circle.area);
  print(square.area);
}

// OBSERVATIONS:

// 1. If the function is called with any string other than 'circle' or 'square', it throws an exception.
// 2. The Dart SDK defines classes for many common exceptions, 
//	 	or you can extend the Exception class to create your own more specific exceptions 
//	 	or (as in this example) you can throw a string that describes the problem encountered.
// 3. When an exception is encountered, DartPad reports Uncaught. 
//	 	To see information that's more helpful, wrap the code in a try-catch statement, 
//    and print the exception.  (pgm4b.dart)
// 4. To use a single quote inside a string, 
//    either escape the embedded quote using slash ('Can\'t create $type.') 
//    or specify the string with double quotes ("Can't create $type.").
// USE OPTIONAL PARAMETERS (instead of over loading):

// 1. The next exercise defines a Rectangle class, another example from the Java Tutorial.

// 2. The Java code shows overloading constructors, 
//    a common practice in Java where constructors have the same name, 
//    but differ in the number or type of parameters. 
//    Dart doesn't support overloading constructors and 
//    handles this situation differently, as you will see in this section.


// 3. ADD A RECTANGLE CONSTRUCTOR:
//    Add a single, empty constructor that replaces all four constructors in the Java example:   
//    -->>  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});
//    This constructor uses optional named parameters.

import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point origin;

  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() => 'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';

}

void main() {
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());
}

// OBSERVATIONS:

// 1. this.origin, this.width, and this.height use the shorthand trick for assigning instance variables 
//    inside a constructor's declaration.

// 2. this.origin, this.width, and this.height are optional named parameters. 
//    Named parameters are enclosed in curly braces ({}).

// 3. The this.origin = const Point(0, 0) syntax specifies a default value of Point(0,0) 
//    for the origin instance variable. 
//	  The specified default must be a compile-time constant. 
//    This constructor supplies default values for all three instance variables.


// IMPROVE THE OUTPUT
//  Add the following toString() function to the Rectangle class:  
//   -->> @override
//  String toString () => 'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';


// USE THE CONSTRUCTOR:
// Replace main() with the following code to verify that you can instantiate Rectangle using only the parameters you need.
// code sample: 
//  main() {
// 		print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
// 		print(Rectangle(origin: const Point(10, 10)));
// 		print(Rectangle(width: 200));
// 		print(Rectangle());
// 	}
//  OBSERVATIONS: The Dart constructor for Rectangle is one line of code, 
//                compared to 16 lines of code for equivalent constructors in the Java version.
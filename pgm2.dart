// 	ADD A READ-ONLY VARIABLE:

// 1.	The original Java example defines speed as a read-only variable—it declares it as private and 
//    provides only a getter. 
//  	Next, you'll provide the same functionality in Dart.'

// 2.	To mark a Dart identifier as private, start its name with an underscore (_).
//  	You can convert speed to read-only variable(in pgm1) by changing its name and adding a getter.

// 3.	Make speed a private, read-only instance variable
//  	In the Bicycle constructor, remove the speed parameter:    -->>  Bicycle(this.cadence, this.gear);

// 4. In main(), remove the second (speed) parameter from the call to the Bicycle constructor:  
//    -->>  var bike = Bicycle(2, 1);

// 5. Change the remaining occurrences of speed to _speed. (2 places)
//    Initialize _speed to 0:
//    int _speed = 0;

// 6. Add the following getter to the Bicycle class:
//    int get speed => _speed;

class Bicycle {

  int cadence;
  int _speed = 0;
  int gear;

  Bicycle(this.cadence, this.gear);

  @override
  String toString()=> "Bicycle: $_speed mph";

  void applyBrake(int decrement) {
    _speed -= decrement;
  }
  
  void speedUp(int increment) {
    _speed += increment;
  }

}

void main() {
  var bike = Bicycle(2, 1);
  print(bike);
}

// OBSERVATIONS:

// 1. Uninitialized variables (even numbers) have the value null.

// 2. The Dart compiler enforces privacy for any identifier prefixed with an underscore.

// 3. By default, Dart provides implicit getters and setters for all public instance variables. 
//		You don't need to define your own getters/setters unless you want to enforce read-only 
//    or write-only variables, compute or verify a value, or update a value elsewhere.

// 4. Since getters and setters were provided for cadence and gear in the original Java example, 
//    they aren't, by definition, considered private in the Dartiverse. 
//		Those instance variables can be accessed using bike.gear or bike.cadence.

// 5. You might start with a simple field, like bike.cadence, and later refactor it to use getters and setters. 
//		The API stays the same. 
//    In other words, going from a field to a getter/setter is not a breaking change in Dart.

// 	FINISH IMPLEMENTING SPEED AS A READ-ONLY INSTANCE VARIABLE:
//  Add the following methods to the Bicycle class:
//  void applyBrake(int decrement) {
//    _speed -= decrement;
//  }
//  void speedUp(int increment) {
//    _speed += increment;
//  }
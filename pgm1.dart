class Bicycle {

  int cadence;
  int speed;
  int gear;

  Bicycle(this.cadence, this.speed, this.gear);  // Constructor in dart

  // 6. This constructor has no body, which is valid in Dart.

  // 7. Using this in a constructor's parameter list is a handy shortcut 
  //    for assigning values to instance variables.

  // 8. Constructor code in class Bicycle is equivalent to:
  //    Bicycle(int cadence, int speed, int gear) {
  // 	    this.cadence = cadence;
  // 	    this.speed = speed;
  // 	    this.gear = gear;
  //    }

  @override
  String toString()=> "Bicycle: $speed mph";

  // 12. The @override annotation tells the analyzer that you are intentionally overriding a member. 
  //     The analyzer raises an error if you've failed to perform the override properly.

  // 13. Dart supports single or double quotes when specifying strings.

  // 14. Use string interpolation to put the value of an expression inside a string literal: ${expression}. 
  //     If the expression is an identifier, you can skip the braces: $variableName.

  // 15. Shorten one-line functions or methods using fat arrow (=>) notation.
}

void main(List<String> args) {
  // 1. Dart's main method is named main() or 
  //    (if you need access to command line arguments) main(List<String> args).

  // 2. The main() method lives at the top level. In Dart, you can define code outside of classes. 
  //    Variables, functions, getters, and setters can all live outside of classes.

  // 3. The original Java example declares private instance variables using the private tag, 
  //    which Dart doesn't use. You'll learn more about privacy in "Step 3: Add a read-only variable".

  // 4. Neither main() nor Bicycle is declared as public, 
  //    because all identifiers are public by default. 
  //    Dart doesn't have keywords for public, private, or protected.

  // 5. Dart uses 2-character indentation, by convention, instead of 4. 
  //    You don't need to worry about Dart's whitespace conventions, thanks to a handy tool called dartfmt. 
  //    As the Dart code conventions (Effective Dart) say, 
  //    "The official whitespace-handling rules for Dart are whatever dartfmt produces."

  var bike = new Bicycle(2, 0, 1);
  // 9. You can remove the new Keyword as it has become optional from Dart 2
  // 10. If you know that a variable's value won't change, you can use final instead of var.
  print(bike);
}

// 11. After running: No errors or warnings should appear, indicating that type inference is working, and 
//     that the analyzer infers that var bike = ... defines a Bicycle instance.
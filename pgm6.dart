// Dart for functional programming

// In functional programming you can do things like:
// 1. Pass functions as arguments.
// 2. Assign a function to a variable.
// 3. Deconstruct a function that takes multiple arguments into a sequence of functions 
//    that each take a single argument (also called currying).
// 4. Create a nameless function that can be used as a constant value (also called a lambda expression; 
//    lambda expressions were added to Java in the JDK 8 release).

// Dart supports all of these features. 
// In Dart, even functions are objects and have a type, Function. 
// This means that functions can be assigned to variables or passed as arguments to other functions. 
// You can also call an instance of a Dart class as if it were a function abstract
// eg: code sample:
class WannabeFunction {
  call(String a, String b, String c) => '$a $b $c!';
}
main() {
  var wf = new WannabeFunction();
  var out = wf("Hi","there,","gang");
  print('$out');
}
// The following example uses imperative (not functional-style) code:

// String scream(int length) => "A${'a' * length}h!";
// main() {
//   final values = [1, 2, 3, 5, 10, 50];
//   for (var length in values) {
//     print(scream(length));
//   }
// }

// OBSERVATIONS:
// When using string interpolation, the string ${'a' * length} evaluates 
// to "the character 'a' repeated length times."


// CONVERT IMPERATIVE CODE TO FUNCTIONAL
//  Remove the imperative for() {...} loop in main() and 
//  replace it with a single line of code that uses method chaining:

String scream1(int length) => "A${'a' * length}h!";
main() {
  final values = [1, 2, 3, 5, 10 ,25];
  values.map(scream1).forEach(print);
}
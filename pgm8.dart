// ITERABLE FEATURES:

// Lists and Iterables, from dart:collection, support fold, where, join, skip, and more. 
// Dart also has Maps and Sets.

String scream(int length) => "A ${'a' * length}h!";

main() {
  final values = [1, 3, 5, 7, 12, 45, 56];
  values.skip(1).take(3).map(scream).forEach(print);
}

// OBSERVATIONS:

// 1. skip(1)skips the first value, 1, in the values list literal.
// 2. take(3)gets the next 3 values—2, 3, and 5—in the values list literal.
// 3. The remaining values are skipped.

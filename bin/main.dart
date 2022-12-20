// Dart Apprentice by Eng. Fady Fawzy
// Chapter 6: Classes

import 'user.dart';

void main() {
  dartClasses();
}

void dartClasses() {
  var user = User();
  // final user = new User();
  user.id = 42;
  user.name = 'Ray';
  final user2 = User()
    ..id = 1
    ..name = 'Fady';
  print(user);
  print(user.toJson());
  print(user2);
  print(user2.toJson());
}

void constructors() {}

class Address {
  // Address(); // Default Constructor
  var value = '';
}

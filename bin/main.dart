// Dart Apprentice by Eng. Fady Fawzy
// Chapter 6: Classes

import 'user.dart';

void main() {
  dartClasses();
}

void dartClasses() {
  var user = User();
  // final user = new User();
  user.name = 'Ray';
  user.id = 42;
  print(user);
}

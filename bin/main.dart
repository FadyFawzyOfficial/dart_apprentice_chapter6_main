// Dart Apprentice by Eng. Fady Fawzy
// Chapter 6: Classes

import 'user.dart';

void main() {
  dartClasses();
  constructors();
}

void dartClasses() {
  // var user = User();
  // final user = new User();
  // user.id = 42;
  // user.name = 'Ray';
  // final user2 = User()
  //   ..id = 1
  //   ..name = 'Fady';
  // print(user);
  // print(user.toJson());
  // print(user2);
  // print(user2.toJson());
}

void constructors() {
  final user = User(id: 25, name: 'Fady');
  print(user);
  // User(id: 25, name: Fady)
  final vicki = User(id: 24, name: 'Vicki');
  vicki.name = 'Nefarious Hacker';
  print(vicki);
  // User(id: 24, name: Nefarious Hacker)
  final anonymousUser = User.anonymous();
  print(anonymousUser);
  // User(id: 0, name: anonymous)
}

class Address {
  // Address(); // Default Constructor
  var value = '';
}

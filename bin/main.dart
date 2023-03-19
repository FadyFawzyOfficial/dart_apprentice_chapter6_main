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
  const user = User(id: 25, name: 'Fady');
  print(user);
  // User(id: 25, name: Fady)
  const vicki = User(id: 24, name: 'Vicki');
  // vicki.name = 'Nefarious Hacker';
  print(vicki);
  // User(id: 24, name: Vicki)
  const anonymousUser = User.anonymous();
  print(anonymousUser);
  // User(id: 0, name: anonymous)

  // final jb = User(id: -1, name: 'JB Lorenzo');
  const jb = User(id: 100, name: 'JB Lorenzo');
  print(jb);
}

class Address {
  // Address(); // Default Constructor
  var value = '';
}

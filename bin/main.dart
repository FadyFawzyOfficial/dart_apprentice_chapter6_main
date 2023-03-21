// Dart Apprentice by Eng. Fady Fawzy
// Chapter 6: Classes

import 'user.dart';

void main() {
  dartClasses();
  constructors();
  dartObjects();
  staticMembers();
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

  final map = {'id': 10, 'name': 'Fady'};
  final fady = User.fromJson(map);
  print(fady);
}

void dartObjects() {
  final myObject = MyClass();
  final anotherObject = myObject;
  print(myObject.myProperty); // 1
  anotherObject.myProperty = 2;
  print(myObject.myProperty); // 2

  const fady = User(id: 1, name: 'Fady');
  print(fady.id);
  print(fady.name);

  // That’s the beauty of how Dart handles class properties.
  // You can change the internal implementation, without the external world
  // being any the wiser.
  // final email = Email();
  // email.value = 'Fady@Fady.com';
  final email = Email('Fady@Fawzy.com');
  final emailString = email.value;
  print(emailString);
}

void staticMembers() {
  final value = SomeClass.myProperty;
  print(value);
  SomeClass.myMethod();

  //* The advantage here is that you can hide the fact that it’s a singleton
  //* from whoever uses it:
  //* This gives you the freedom to change it back into a generative constructor
  //* later without affecting the code in other parts of your project.
  final mySingleton = MySingleton();
  print(mySingleton);
}

class Address {
  // Address(); // Default Constructor
  var value = '';
}

class MyClass {
  int myProperty = 1;
}

class Email {
  // Dart implicitly generates the needed getters and setters for you.
  // That’s quite a bit more readable and it still works exactly the same:
  final String value;

  const Email(this.value);

  // String get value => _address;
  // set value(String address) => _address = address;
}

class SomeClass {
  static int myProperty = 0;

  static void myMethod() {
    print('Hello, Dart!');
  }
}

class MySingleton {
  static final MySingleton _instance = MySingleton._();

  MySingleton._();

  //* Since factory constructors don’t need to return new instances of an object,
  //* you can also implement the singleton pattern with a factory constructor:
  factory MySingleton() => _instance;
}

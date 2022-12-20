class User {
  // Long Form Constructor
  // User(int id, String name) {
  //   this.id = id;
  //   this.name = name;
  // }

  // Short Form Constructor
  // User(this.id, this.name);

  // Named Constructor
  // User.anonymous() {
  //   id = 0;
  //   name = 'anonymous';
  // }

  // Forwarding Constructor
  // User.anonymous() : this(0, 'anonymous');

  // Adding named parameters for User
  //* Unnamed Constructor
  User({this.id = 0, this.name = 'anonymous'});
  //* Named Constructor
  User.anonymous() : this();

  //* Dart is finally convinced that id and name are guaranteed to be initialized.
  int id;
  String name;

  String toJson() => '{"id": $id, "name": "$name"}';

  @override
  String toString() => 'User(id: $id, name: $name)';
}

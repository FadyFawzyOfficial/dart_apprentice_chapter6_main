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
  const User({int id = 0, String name = 'anonymous'})
      : assert(id >= 0),
        _id = id,
        _name = name;
  //* Named Constructor
  const User.anonymous() : this();

  // User.fromJson(Map<String, Object> map)
  //     : _id = map['id'] as int,
  //       _name = map['name'] as String;

  factory User.fromJson(Map<String, Object> map) {
    final userId = map['id'] as int;
    final userName = map['name'] as String;
    return User(id: userId, name: userName);
  }

  //* Dart is finally convinced that id and name are guaranteed to be initialized.
  final int _id;
  final String _name;

  int get id => _id;
  String get name => _name;

  String toJson() => '{"id": $_id, "name": "$_name"}';

  @override
  String toString() => 'User(id: $_id, name: $_name)';
}

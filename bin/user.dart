class User {
  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';

  //* Dart is finally convinced that id and name are guaranteed to be initialized.
  final int id;
  final String name;

  // Adding named parameters for User
  //* Unnamed Constructor
  const User({this.id = _anonymousId, this.name = _anonymousName})
      : assert(id >= 0);
  //* Named Constructor
  const User.anonymous() : this();

  // User.fromJson(Map<String, Object> map)
  //     : _id = map['id'] as int,
  //       _name = map['name'] as String;

  // factory User.fromJson(Map<String, Object> map) {
  //   final userId = map['id'] as int;
  //   final userName = map['name'] as String;
  //   return User(id: userId, name: userName);
  // }

  static User fromJson(Map<String, Object> map) {
    final userId = map['id'] as int;
    final userName = map['name'] as String;
    return User(id: userId, name: userName);
  }

  String toJson() => '{"id": $id, "name": "$name"}';

  @override
  String toString() => 'User(id: $id, name: $name)';
}

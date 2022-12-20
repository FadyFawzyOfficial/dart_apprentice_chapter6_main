class User {
  // Long Form Constructor
  User(int id, String name) {
    this.id = id;
    this.name = name;
  }

  int id = 0;
  String name = '';

  String toJson() => '{"id": $id, "name": "$name"}';

  @override
  String toString() => 'User(id: $id, name: $name)';
}

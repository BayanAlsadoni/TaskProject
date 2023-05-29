class User {
  int? id;
  String? name;
  String? email;
  String? password;

  User({
    this.id,
    this.name,
    this.email,
    this.password,
  });
  User.fromMap(Map map) {
    id = map['id'];
    name = map['name'];
    email = map['email'];
    password = map['password'];
  }
  toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
    };
  }
}

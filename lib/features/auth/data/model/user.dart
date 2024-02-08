class User {
  User({required this.id});
  final String id;
}

User getUserById(String id) {
  return User(id: id);
}

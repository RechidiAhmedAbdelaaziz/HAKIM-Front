abstract class User {
  final String id;
  User({required this.id});
}

class Patient extends User {
  Patient({required super.id});
}

class Doctor extends User {
  Doctor({required super.id});
}

Patient getUserById(String id) {
  return Patient(id: id);
}

Doctor getDrById(String id) {
  return Doctor(id: id);
}

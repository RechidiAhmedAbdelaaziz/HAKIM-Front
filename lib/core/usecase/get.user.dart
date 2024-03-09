import 'package:front/features/auth/data/models/user.dart';
import 'package:front/features/auth/domain/enitities/doctor.dart';
import 'package:front/features/auth/domain/enitities/patient.dart';
import 'package:front/features/auth/domain/enitities/user.dart';

class GetUserFromModel {
  static User? call(AuthModel? model) => model?.kind == "Doctor"
      ? Doctor.fromModel(model)
      : Patient.fromModel(model);
}

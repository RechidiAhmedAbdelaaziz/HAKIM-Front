import 'package:dio/dio.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/appointment/data/repoimp/appointment.imp.dart';
import 'package:front/features/appointment/data/source/appointment.local.dart';
import 'package:front/features/appointment/data/source/appointment.remote.dart';
import 'package:front/features/appointment/domain/repo/appointment.dart';
import 'package:front/features/appointment/domain/usecases/index.dart';

part 'appointment.depns.dart';
part 'appoitment.usecases.dart';

Future setUpAppointmentDependencies() async {
  await _setUpAppointment();
}

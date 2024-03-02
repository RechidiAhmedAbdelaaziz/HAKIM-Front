import 'package:dio/dio.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/appointment/data/source/appointment.local.dart';
import 'package:front/features/questions/data/repos/question.imp.dart';
import 'package:front/features/questions/data/source/question.local.dart';
import 'package:front/features/questions/data/source/question.remote.dart';
import 'package:front/features/questions/domain/repo/question.dart';

import '../dependency.dart';

part 'answer.dpns.dart';
part 'answer.usecases.dart';
part 'question.dpns.dart';
part 'question.usecases.dart';

Future setUpQuestionDependencies() async {}

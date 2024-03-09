import 'package:dio/dio.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/questions/data/repos/answer.imp.dart';
import 'package:front/features/questions/data/repos/question.imp.dart';
import 'package:front/features/questions/data/source/answer.local.dart';
import 'package:front/features/questions/data/source/answer.remote.dart';
import 'package:front/features/questions/data/source/question.local.dart';
import 'package:front/features/questions/data/source/question.remote.dart';
import 'package:front/features/questions/domain/repo/answer.dart';
import 'package:front/features/questions/domain/repo/question.dart';
import 'package:front/features/questions/domain/usecases/index.dart';

import '../dependency.dart';

part 'answer.dpns.dart';
part 'answer.usecases.dart';
part 'question.dpns.dart';
part 'question.usecases.dart';

Future setUpQuestionDependencies() async {
  _setUpQuestion();
  _setUpAnswer();
}

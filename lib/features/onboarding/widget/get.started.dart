import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/helpers/routing.dart';
import 'package:front/routes/routes.dart';
import 'package:front/core/widgets/continue.button.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 689.h,
      child: ContinueButton(
        title: "Start Now",
        press: () {
          context.offNamed(Routes.login);
        },
      ),
    );
  }
}

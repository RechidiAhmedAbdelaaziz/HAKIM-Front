import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/Theme/fonts.dart';
import 'package:front/core/helpers/routing.dart';
import 'package:front/core/widgets/app.checkbox.dart';
import 'package:front/core/widgets/change.lang.dart';
import 'package:front/core/widgets/continue.button.dart';
import 'package:front/core/widgets/separate.dart';
import 'package:front/features/auth/logic/auth_cubit.dart';
import 'package:front/features/onboarding/widget/logo.dart';
import 'package:front/features/onboarding/widget/pill.top.right.dart';
import 'package:front/routes/routes.dart';

import 'widgets/index.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Column _buildLoginForm(AuthCubit cubit) {
    return Column(
      children: [
        AuthFromFiled(
          "Enter your email address",
          controller: cubit.email,
        ),
        height(23),
        AuthFromFiled(
          "Enter your password",
          controller: cubit.password,
          show: false,
        ),
      ],
    );
  }

  InkWell _forgetPassword(void Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Text(
        "Forgot password ?",
        style: AppTextStyle.title.copyWith(color: AppColors.blueText),
      ),
    );
  }

  Row _rememberMe(AuthCubit cubit) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return AppCheckBox(
              onChanged: (p0) {
                cubit.changeRememberMe();
              },
              value: cubit.rememberMe,
            );
          },
        ),
        Text(
          "Remember me",
          style: AppTextStyle.title.copyWith(color: AppColors.blueText),
        ),
      ],
    );
  }

  Row _dontHaveAccount(AuthCubit cubit, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Dont't have an account ?",
          style: AppTextStyle.body.copyWith(color: AppColors.greyLight),
        ),
        InkWell(
          onTap: () => cubit.goToSignup(context),
          child: Text(
            "  Sign up",
            style: TextStyle(
              color: AppColors.blueText,
              fontSize: 14.sp,
              fontWeight: AppFontWeight.semiBold,
            ),
          ),
        )
      ],
    );
  }

  ContinueButton _buildLoginButton(AuthCubit cubit) {
    return ContinueButton(
      title: "Login",
      press: () async {
        await cubit.login();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loggedin: (user) {
            context.offNamed(Routes.home);
          },
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.blue,
        body: Stack(
          children: [
            const PillsTopRight(),
            const ChangeLangButton(),
            Column(
              children: [
                height(163),
                const Logo(height: 132, width: 170),
                height(55),
                _buildLoginForm(cubit),
                height(43),
                Row(
                  children: [
                    width(18),
                    _rememberMe(cubit),
                    const Spacer(),
                    _forgetPassword(() {}),
                    width(18),
                  ],
                ),
                height(43),
                _buildLoginButton(cubit),
                height(26),
                _dontHaveAccount(cubit, context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/Theme/fonts.dart';
import 'package:front/core/widgets/app.checkbox.dart';
import 'package:front/core/widgets/change.lang.dart';
import 'package:front/core/widgets/continue.button.dart';
import 'package:front/core/widgets/separate.dart';
import 'package:front/features/auth/logic/auth_cubit.dart';
import 'package:front/features/onboarding/widget/pill.top.right.dart';

import 'widgets/index.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  Row _proAccount(AuthCubit cubit) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        width(55),
        BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return AppCheckBox(
              onChanged: (p0) {
                cubit.changeAccountType();
              },
              value: cubit.isPro,
            );
          },
        ),
        Text(
          "Profissional account",
          style: AppTextStyle.title.copyWith(color: AppColors.blueText),
        ),
      ],
    );
  }

  Row _alreadyHaveAccount(AuthCubit cubit, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account ?",
          style: AppTextStyle.body.copyWith(color: AppColors.greyLight),
        ),
        InkWell(
          onTap: () => cubit.goToLogin(context),
          child: Text(
            "  Login",
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

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Stack(
        children: [
          const PillsTopRight(),
          const ChangeLangButton(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              height(210),
              _buildSignUpForm(cubit),
              height(22),
              _proAccount(cubit),
              height(67),
              _bySignupTerms(),
              height(12),
              ContinueButton(
                  title: "Sign up",
                  press: () async {
                    await cubit.signUp();
                  }),
              height(25),
              _alreadyHaveAccount(cubit, context),
            ],
          ),
        ],
      ),
    );
  }

  Column _buildSignUpForm(AuthCubit cubit) {
    return Column(
              children: [
                AuthFromFiled('Full Name', controller: cubit.name),
                height(15),
                AuthFromFiled('Email adress', controller: cubit.email),
                height(15),
                AuthFromFiled('Password', controller: cubit.password),
                height(15),
                AuthFromFiled('Confirme Password', controller: cubit.cPassword),
              ],
            );
  }

  // By signing up, you agree to our Terms and Conditions and Privacy Policy
  Padding _bySignupTerms() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                style: AppTextStyle.body.copyWith(color: AppColors.greyLight),
                text: "By signing up, you agree to our"),
            TextSpan(
                style: AppTextStyle.title.copyWith(color: AppColors.blueText),
                text: " Terms and Conditions "),
            TextSpan(
                style: AppTextStyle.body.copyWith(color: AppColors.greyLight),
                text: "and "),
            TextSpan(
                style: AppTextStyle.title.copyWith(color: AppColors.blueText),
                text: " Privacy Policy")
          ])),
    );
  }
}

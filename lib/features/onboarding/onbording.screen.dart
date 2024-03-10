// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:front/core/Theme/colors.dart';

// import 'widget/change.lang.dart';
// import 'widget/get.started.dart';
// import 'widget/logo.dart';
// import 'widget/pill.top.right.dart';

// class OnBoardingScreen extends StatefulWidget {
//   static const root = "/";
//   const OnBoardingScreen({Key? key}) : super(key: key);

//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   @override
//   void initState() {
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//     ));
//     super.initState();
//   }

//   @override
//   void dispose() {
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       statusBarColor: AppColors.blueFancy,
//     ));
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.blueBg,
//       body: Stack(
//         children: [
//           const ChangeLangButton(),
//           const PillsTopRight(),
//           Logo(),
//           const GetStartedButton(),
//         ],
//       ),
//     );
//   }
// }

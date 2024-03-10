import 'package:flutter/material.dart';
import 'package:front/core/Theme/colors.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({
    required this.onChanged,
    required this.value,
    super.key,
  });

  final bool value;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: AppColors.blueText,
      checkColor: AppColors.blueDark,
      side: BorderSide.none,
      fillColor: const MaterialStatePropertyAll(AppColors.white),
    );
  }
}

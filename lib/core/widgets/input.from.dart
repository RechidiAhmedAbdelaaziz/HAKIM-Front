import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/Theme/fonts.dart';

// ignore: must_be_immutable
class InputFrom extends StatefulWidget {
  InputFrom({
    required this.controller,
    this.showen = true,
    this.prefix,
    this.suffix,
    this.action,
    required this.hint,
    this.keyboardType,
    required this.validator,
    super.key,
  });
  final formKey = GlobalKey<FormState>();

  bool showen;
  bool isFocused = false;
  Widget? prefix;
  Widget? suffix;
  Function? action;
  String hint;
  TextEditingController controller;
  TextInputType? keyboardType;
  final String? Function(String?)? validator;

  @override
  State<InputFrom> createState() => _InputFromState();
}

class _InputFromState extends State<InputFrom> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.topCenter,
            width: 268.w,
            height: 39.h,
            decoration: ShapeDecoration(
              color: AppColor.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Stack(
              children: [
                if (!widget.isFocused && widget.controller.text.isEmpty)
                  Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (widget.prefix != null) widget.prefix!,
                          SizedBox(width: 7.w),
                          Text(
                            widget.hint,
                            style: TextStyle(
                                color: AppColor.grey,
                                fontSize: 14.sp,
                                fontWeight: AppFontWeight.bold),
                          )
                        ],
                      )),
                Align(
                  alignment: Alignment.center,
                  child: TextFormField(
                    key: widget.formKey,
                    onTap: () {
                      setState(() {
                        widget.isFocused = true;
                      });
                    },
                    onTapOutside: (event) {
                      if (widget.controller.text.isEmpty) {
                        setState(() {
                          widget.isFocused = false;
                        });
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        if (value.isEmpty) {
                          widget.isFocused = false;
                        }
                        if (value.isNotEmpty) {
                          widget.isFocused = true;
                        }
                      });
                    },
                    validator: widget.validator,
                    controller: widget.controller,
                    textAlign: TextAlign.center,
                    keyboardType: widget.keyboardType,
                    obscureText: !widget.showen,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (widget.suffix != null)
          InkWell(
            onTap: () {
              if (widget.action != null) {
                widget.action!();
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: widget.suffix!,
            ),
          ),
      ],
    );
  }
}

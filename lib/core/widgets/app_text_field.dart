import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';


class AppTextField extends StatelessWidget {
  const AppTextField({super.key,required this.controller,required this.hintText, this.topMargin, this.bottomMargin, this.leftMargin, this.rightMargin});

  final TextEditingController controller;
  final String hintText;
  final double? topMargin;
  final double? bottomMargin;
  final double? leftMargin;
  final double? rightMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: leftMargin ?? 0 ,right: rightMargin ?? 0 ,top: topMargin ?? 0, bottom: bottomMargin ?? 20),
      constraints:  BoxConstraints.tight(const Size.fromHeight(40)),
      child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        style: AppTextStyles.latoW600().copyWith(fontSize: 15),
        decoration:  InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.latoW500().copyWith(fontSize: 14,color: AppColors.cE0E0E0.withOpacity(0.4)),
          contentPadding: const EdgeInsets.only(left: 10),
          fillColor: AppColors.c2E2E48,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.cE1E1E1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.cE1E1E1,
            ),
          ),
        ),
      ),
    );
  }
}

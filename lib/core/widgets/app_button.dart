import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_colors.dart';

import '../app_text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.backgroundColor,
      this.textColor,
      required this.text,
      this.topMargin,
      this.bottomMargin,
      this.leftMargin,
      this.rightMargin,
      required this.onTap, this.radius});

  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback onTap;
  final String text;
  final double? topMargin;
  final double? bottomMargin;
  final double? leftMargin;
  final double? rightMargin;
  final BorderRadius? radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.circular(8),
      child: Material(
        borderRadius: radius ?? BorderRadius.circular(8),
        color: backgroundColor ?? AppColors.c475BE8,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 40,
            alignment: Alignment.center,
            child: Text(
              text,
              style: AppTextStyles.manropeW500().copyWith(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}

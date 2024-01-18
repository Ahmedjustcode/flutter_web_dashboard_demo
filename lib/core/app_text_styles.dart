import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_colors.dart';

class AppTextStyles {
  static const _manropeFamily = 'manrope';
  static const _latoFamily = 'lato';

  static TextStyle manropeW500([double fontSize = 14, Color color = AppColors.cFFFFFF]) => TextStyle(
        fontFamily: _manropeFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: color,
      );

  static TextStyle latoW800([double fontSize = 16, Color color = AppColors.cFFFFFF]) => TextStyle(
    fontFamily: _latoFamily,
    fontSize: fontSize,
    fontWeight: FontWeight.w800,
    color: color,
  );

  static TextStyle latoW700({double fontSize = 22, Color color = AppColors.cFFFFFF}) => TextStyle(
    fontFamily: _latoFamily,
    fontSize: fontSize,
    height: 1.3,
    fontWeight: FontWeight.w700,
    color: color,
  );

  static TextStyle latoW600({double fontSize = 14, Color color = AppColors.cF3F3F3}) => TextStyle(
        fontFamily: _latoFamily,
        fontSize: fontSize,
        height: 1.3,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle latoW500({double fontSize = 14, Color color = AppColors.cD7D7D7}) => TextStyle(
    fontFamily: _latoFamily,
    fontSize: fontSize,
    height: 1.3,
    fontWeight: FontWeight.w500,
    color: color,
  );

  static TextStyle latoW400({double fontSize = 16, Color color = AppColors.cF3F3F3}) => TextStyle(
    fontFamily: _latoFamily,
    fontSize: fontSize,
    fontWeight: FontWeight.w400,
    color: color,
  );


}

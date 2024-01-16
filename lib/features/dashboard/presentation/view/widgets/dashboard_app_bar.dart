import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_images.dart';
import 'package:flutter_web_example/core/app_strings.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';


class DashBoardAppBar extends StatelessWidget {
  const DashBoardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppStrings.dashBoard,style: AppTextStyles.latoW700(),),
        const Spacer(),

      ],
    );
  }
}

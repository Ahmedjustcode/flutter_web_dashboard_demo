import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/app_images.dart';
import 'package:flutter_web_example/core/app_strings.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17,left: 5,right: 5,bottom: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ColoredBox(
            color: Colors.red,
            child: Container(
              height: 26,
              width: 26,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: AppColors.cFFFFFF
              ), child: SvgPicture.asset(AppImages.appIcon,height: 20,width: 20,),
            ),
          ),
          const SizedBox(width: 6,),
          Text(AppStrings.dukaan,style: AppTextStyles.latoW800(),)
        ],
      ),
    );
  }
}

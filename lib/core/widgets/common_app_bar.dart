import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/app_images.dart';
import 'package:flutter_web_example/core/app_strings.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';
import 'package:flutter_web_example/core/widgets/responsive_widget.dart';


class DashBoardAppBar extends StatelessWidget {
  const DashBoardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))GestureDetector(
            onTap: (){
             if(!Scaffold.of(context).isDrawerOpen){
               Scaffold.of(context).openDrawer();
             }
            },
            child: const Icon(Icons.menu_rounded,color: AppColors.cFFFFFF,)),
        if(!Responsive.isDesktop(context))const SizedBox(width: 10,),
        Text(AppStrings.dashBoard,style: AppTextStyles.latoW700(),),
        const Spacer(),

      ],
    );
  }
}

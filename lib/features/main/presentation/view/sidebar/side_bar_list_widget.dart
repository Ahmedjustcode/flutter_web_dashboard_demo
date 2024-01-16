import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';

class SidebarListElementWidget extends StatelessWidget {
   SidebarListElementWidget({super.key, required this.text, required this.icon, required this.isSelected});

  final String text;
  final String icon;
  final bool isSelected;

  final ValueNotifier<bool> hoverListenAble = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: hoverListenAble,
        builder: (context, isHover, widget) {
          return MouseRegion(
            onEnter: (_) => hoverListenAble.value = true,
            onExit: (_) => hoverListenAble.value = false,
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
                decoration: BoxDecoration(color: isSelected ? AppColors.c475BE8 : isHover ? AppColors.c475BE8withOpacity : null, borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    SizedBox.square(
                        dimension: 18,
                        child: SvgPicture.asset(icon)),
                    const SizedBox(width: 12,),
                    Text(
                      text,
                      style: AppTextStyles.manropeW500(),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

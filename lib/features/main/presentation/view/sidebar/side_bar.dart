import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/app_images.dart';
import 'package:flutter_web_example/core/app_strings.dart';
import 'package:flutter_web_example/features/main/presentation/view/sidebar/app_logo.dart';
import 'package:flutter_web_example/features/main/presentation/view/sidebar/side_bar_list_widget.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 209,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.c2E2E48,
        boxShadow: [
          BoxShadow(
            color:AppColors.c000000,
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ]
      ),
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 30),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppLogoWidget(),
                SidebarListElementWidget(
                  text: AppStrings.dashBoard,
                  icon: AppImages.dashboard,
                  isSelected: true,
                ),
                SidebarListElementWidget(
                  text: AppStrings.statistic,
                  icon: AppImages.statistics,
                  isSelected: false,
                ),
                SidebarListElementWidget(
                  text: AppStrings.payment,
                  icon: AppImages.payment,
                  isSelected: false,
                ),
                SidebarListElementWidget(
                  text: AppStrings.transactions,
                  icon: AppImages.transactions,
                  isSelected: false,
                ),
                SidebarListElementWidget(
                  text: AppStrings.products,
                  icon: AppImages.products,
                  isSelected: false,
                ),
                SidebarListElementWidget(
                  text: AppStrings.customer,
                  icon: AppImages.customers,
                  isSelected: false,
                ),
                SidebarListElementWidget(
                  text: AppStrings.messages,
                  icon: AppImages.messages,
                  isSelected: false,
                ),
                const Spacer(),
                SidebarListElementWidget(
                  text: AppStrings.settings,
                  icon: AppImages.settings,
                  isSelected: false,
                ),
                SidebarListElementWidget(
                  text: AppStrings.logout,
                  icon: AppImages.logOut,
                  isSelected: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

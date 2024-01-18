import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/widgets/responsive_widget.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return Container(
          color: AppColors.c2E2E48,
        );
      },
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: Responsive.isMobile(context)  ? 2 : Responsive.isTablet(context) ? 3: 6,mainAxisSpacing: 10,crossAxisSpacing: 10,childAspectRatio: 4/5),
    );
  }
}

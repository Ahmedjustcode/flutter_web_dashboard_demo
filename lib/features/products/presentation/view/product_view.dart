import 'package:flutter/material.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/widgets/common_app_bar.dart';
import '../../../../core/widgets/responsive_widget.dart';


class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: ProductDesktopView(),
      mobile: ProductDesktopView(),
      tablet: ProductDesktopView(),
    );
  }
}

class ProductDesktopView extends StatelessWidget {
  const ProductDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(left: 58, right: 131, top: 47),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  CommonAppBar(title: AppStrings.products,),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            )
          ],
        ));;
  }
}


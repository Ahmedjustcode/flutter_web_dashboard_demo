import 'package:flutter/material.dart';
import 'package:flutter_web_example/features/products/presentation/view/widgets/product_list_view.dart';

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
    return Padding(
        padding: Responsive.isDesktop(context)
            ? const EdgeInsets.only(left: 58, right: 131, top: 47)
            : const EdgeInsets.only(left: 10, right: 10, top: 20),
        child:  Column(
          children: [
            CommonAppBar(
              title: AppStrings.products,
              actions: ElevatedButton(onPressed: (){}, child: const Text('Add product')),
            ),
            const SizedBox(
              height: 15,
            ),
            const Expanded(child: ProductListView())
          ],
        ));
  }
}

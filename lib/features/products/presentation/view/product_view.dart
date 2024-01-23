import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';
import 'package:flutter_web_example/core/widgets/app_button.dart';
import 'package:flutter_web_example/features/products/presentation/product_view_model/product_view_model_bloc.dart';
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

class ProductDesktopView extends StatefulWidget {
  const ProductDesktopView({super.key});

  @override
  State<ProductDesktopView> createState() => _ProductDesktopViewState();
}

class _ProductDesktopViewState extends State<ProductDesktopView> {

  bool isDraftListVisible = false;

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
              actions: Row(
                children: [
                  TextButton(onPressed: (){
                    isDraftListVisible = !isDraftListVisible;
                    setState(() {

                    });
                  }, child:  Text(!isDraftListVisible ?'Draft products' : 'Live Products',style: AppTextStyles.latoW500(),)),
                  const SizedBox(
                    width: 15,
                  ),
                  AppButton(onTap: (){
                    BlocProvider.of<ProductViewModelBloc>(context).add(ProductViewModelAddButtonTap(context: context));
                  }, text: AppStrings.addProduct,width: 100,),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
             Expanded(child: ProductListView(isDraftListVisible: isDraftListVisible ,))
          ],
        ));
  }
}

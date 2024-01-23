import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/core/helpers/Sliver_grid_delegate_With_fixed_cross_axis_count_and_fixed_height.dart';
import 'package:flutter_web_example/core/widgets/responsive_widget.dart';
import 'package:flutter_web_example/features/products/presentation/product_view_model/product_view_model_bloc.dart';
import 'package:flutter_web_example/features/products/presentation/view/widgets/product_list_item.dart';

import '../../../../../core/app_colors.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key, required this.isDraftListVisible});

  final bool isDraftListVisible;

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.offset == scrollController.positions.toList()[0].maxScrollExtent) {
        BlocProvider.of<ProductViewModelBloc>(context).add(const ProductViewModelGetProducts(false, skipProduct: 0));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductViewModelBloc, ProductViewModelState>(
      builder: (context, state) {
        if (state is ProductLoadingState) {
          return GridView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.c2E2E48,
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
              crossAxisCount: Responsive.isMobile(context)
                  ? 2
                  : Responsive.isTablet(context)
                      ? 3
                      : 6,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
          );
        }
        if (state is ProductListLoadedState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GridView.builder(
                  controller: scrollController,
                  itemCount: widget.isDraftListVisible ? state.productDraftList.length : state.productList.length,
                  itemBuilder: (context, index) {
                    return ProductListItem(
                      product: widget.isDraftListVisible ? state.productDraftList[index] : state.productList[index],
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: Responsive.isMobile(context)
                        ? 2
                        : Responsive.isTablet(context)
                            ? 3
                            : 6,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 4 / 5,
                  ),
                ),
              ),
            ],
          );
        }
        return const Text('initial state');
      },
    );
  }
}

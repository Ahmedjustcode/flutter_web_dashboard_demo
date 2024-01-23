import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';
import 'package:flutter_web_example/features/products/domain/domain/product_entity/product_entity.dart';

import '../../../../../core/app_colors.dart';
import '../../../data/models/product_model.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({super.key, required this.product});

  final dynamic product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.c2E2E48,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 6 / 5,
            child: product is ProductEntity ? Image.memory(product.thumbnail! ,fit: BoxFit.cover):Image.network(product.thumbnail!, fit: BoxFit.cover),
          ),
          const SizedBox(height: 10),
          Text(
            product.title.toString(),
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.latoW400(),
          ),
          const SizedBox(height: 5,),
          Expanded(
            child: Text(
              product.description.toString(),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: AppTextStyles.latoW400(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

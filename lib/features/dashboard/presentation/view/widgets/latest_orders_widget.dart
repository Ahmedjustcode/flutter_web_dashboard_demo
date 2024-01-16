import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/app_strings.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';

class LatestOrdersWidget extends StatelessWidget {
  const LatestOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.c2E2E48,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.latestOrders, style: AppTextStyles.latoW700(fontSize: 16)),
          const SizedBox(
            height: 12,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(bottom: 20),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(6), border: Border.all(color: AppColors.c383856)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  decoration: const BoxDecoration(
                      color: AppColors.c383854,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.products,
                        style: AppTextStyles.latoW400(),
                      ),
                      Text(
                        AppStrings.orderId,
                        style: AppTextStyles.latoW400(),
                      ),
                      Text(
                        AppStrings.date,
                        style: AppTextStyles.latoW400(),
                      ),
                      Text(
                        AppStrings.customerName,
                        style: AppTextStyles.latoW400(),
                      ),
                      Text(
                        AppStrings.status,
                        style: AppTextStyles.latoW400(),
                      ),
                      Text(
                        AppStrings.amount,
                        style: AppTextStyles.latoW400(),
                      ),
                      Text(
                        AppStrings.action,
                        style: AppTextStyles.latoW400(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: List.generate(7, (index) => Expanded(child: Container(
                      height: 10,
                      color: index % 2 == 0 ? Colors.red:Colors.yellow,))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

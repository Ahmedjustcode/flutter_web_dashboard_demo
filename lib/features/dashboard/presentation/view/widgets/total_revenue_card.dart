import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/app_images.dart';
import 'package:flutter_web_example/core/app_strings.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/widgets/chart_and_graphs/comparison_bar_chart/comparison_bar_chart.dart';

class TotalRevenueCard extends StatelessWidget {
  const TotalRevenueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 305,
      padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.c2E2E48,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppStrings.totalRevenue,
                style: AppTextStyles.latoW700(color: AppColors.cF3F3F3, fontSize: 16).copyWith(height: 1.5),
              ),
              const Spacer(),
              const ProfitLostHintWidget(color: AppColors.c475BE8, text: AppStrings.profit),
              const SizedBox(width: 20),
              const ProfitLostHintWidget(color: AppColors.cE3E7FC, text: AppStrings.loss)
            ],
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '\$50.4K',
                style: AppTextStyles.latoW700(fontSize: 24),
              ),
              const SizedBox(width: 18),
              SvgPicture.asset(AppImages.arrowUp),
              const SizedBox(width: 5),
              Text(
                '5% the last month',
                style: AppTextStyles.latoW500(fontSize: 12, color: AppColors.c4CE13F).copyWith(height: 1.5),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Expanded(
            child: Container(
                child: const ComparisonBarChart()),
          )
        ],
      ),
    );
  }
}

class ProfitLostHintWidget extends StatelessWidget {
  const ProfitLostHintWidget({super.key, required this.color, required this.text});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 6),
          height: 9,
          width: 9,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        Text(
          text,
          style: AppTextStyles.latoW500(fontSize: 12),
        )
      ],
    );
  }
}

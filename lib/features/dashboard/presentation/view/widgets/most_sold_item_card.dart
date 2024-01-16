import 'package:flutter/material.dart';

import '../../../../../core/app_colors.dart';
import '../../../../../core/app_strings.dart';
import '../../../../../core/app_text_styles.dart';

class MostSoldItemCard extends StatelessWidget {
  const MostSoldItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.c2E2E48,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.mostSoldItems,
            style: AppTextStyles.latoW700(color: AppColors.cF3F3F3, fontSize: 18),
          ),
          const SizedBox(
            height: 18,
          ),
          const MostSoldItemBar(
            title: 'Jeans',
            percentage: 70,
          ),
          const MostSoldItemBar(
            title: 'Shirts',
            percentage: 40,
          ),
          const MostSoldItemBar(
            title: 'Belts',
            percentage: 40,
          ),
          const MostSoldItemBar(
            title: 'Caps',
            percentage: 99,
          ),
          const MostSoldItemBar(
            title: 'Others',
            percentage: 20,
          ),
          const MostSoldItemBar(
            title: 'Others',
            percentage: 20,
          ),
          const MostSoldItemBar(
            title: 'Others',
            percentage: 20,
          ),
        ],
      ),
    );
  }
}

class MostSoldItemBar extends StatelessWidget {
  const MostSoldItemBar({super.key, required this.title, required this.percentage});

  final String title;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: AppTextStyles.latoW600(),
            ),
            const Spacer(),
            Text(
              '$percentage%',
              style: AppTextStyles.latoW700(fontSize: 14, color: AppColors.cF3F3F3),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 18, top: 6),
          alignment: Alignment.topLeft,
          height: 8,
          width: double.infinity,
          decoration: BoxDecoration(color: AppColors.cE3E7FC, borderRadius: BorderRadius.circular(9)),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                alignment: Alignment.topLeft,
                height: 8,
                width: constraints.maxWidth * (percentage / 100),
                decoration: BoxDecoration(color: AppColors.c475BE8, borderRadius: BorderRadius.circular(9)),
              );
            },
          ),
        ),
      ],
    );
  }
}

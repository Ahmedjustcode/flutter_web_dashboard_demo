import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';

class TodayInfoCard extends StatelessWidget {
  const TodayInfoCard({super.key, required this.title, required this.description, required this.value, required this.fillChartColor});

  final String title;
  final String description;
  final String value;
  final Color fillChartColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.c2E2E48, borderRadius: BorderRadius.circular(5)),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: ColoredBox(
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.latoW700(fontSize: 14, color: AppColors.cF3F3F3),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\$${value}k',
                    style: AppTextStyles.latoW700(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    description,
                    style: AppTextStyles.latoW500(),
                  )
                ],
              ),
            ),
          ),
          // const Spacer(),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 60,
              width: 60,
              child: PieChart(
                PieChartData(
                  sectionsSpace: 0,
                  centerSpaceColor: Colors.transparent,
                  centerSpaceRadius: double.infinity,
                  sections: [
                    PieChartSectionData(
                        showTitle: false,
                        value: 0.5,
                        radius: 17,
                        color: fillChartColor
                    ),
                    PieChartSectionData(
                      showTitle: false,
                      value: 0.2,
                      color: AppColors.cE4E8EF,
                      radius:17,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

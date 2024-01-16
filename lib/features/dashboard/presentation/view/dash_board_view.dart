import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/widgets/responsive_widget.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/widgets/dashboard_app_bar.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/widgets/latest_orders_widget.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/widgets/most_sold_item_card.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/widgets/today_info_card.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/widgets/total_revenue_card.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: const DashBoardViewDesktop(),
      mobile: Container(),
      tablet: const DashBoardViewDesktop(),
    );
  }
}

class DashBoardViewDesktop extends StatelessWidget {
  const DashBoardViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 58, right: 131, top: 47),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const DashBoardAppBar(),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TodayInfoCard(
                          title: 'Today Sales',
                          value: 20.4.toString(),
                          description: 'We have sold 123 items',
                          fillChartColor: AppColors.c475BE8,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TodayInfoCard(
                          title: 'Today Revenue',
                          value: 8.2.toString(),
                          description: 'Available to payout',
                          fillChartColor: AppColors.c4CE13F,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TodayInfoCard(
                          title: 'In Escrow',
                          value: 18.2.toString(),
                          description: 'Available to payout',
                          fillChartColor: AppColors.cF29A2E,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 689,
                          child: TotalRevenueCard(),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          flex: 337,
                          child: MostSoldItemCard(),
                        )
                      ],
                    ),
                  ),
                  const LatestOrdersWidget()
                ],
              ),
            )
          ],
        ));
  }
}

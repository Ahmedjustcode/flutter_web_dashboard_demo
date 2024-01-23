import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/app_strings.dart';
import 'package:flutter_web_example/core/widgets/responsive_widget.dart';
import 'package:flutter_web_example/core/widgets/common_app_bar.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/widgets/latest_orders_widget.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/widgets/most_sold_item_card.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/widgets/today_info_card.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/widgets/total_revenue_card.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: DashBoardViewDesktop(),
      mobile: DashBoardMobileView(),
      tablet: DashBoardViewDesktop(),
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
                  const CommonAppBar(title: AppStrings.dashBoard,),
                  const SizedBox(
                    height: 15,
                  ),
                  // Image.network('http://localhost:3000/images/default.png',errorBuilder: (context,widget,stackTrace){
                  //   return const Icon(Icons.error,size: 60,);
                  // },),
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

class DashBoardMobileView extends StatelessWidget {
  const DashBoardMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const CommonAppBar(title: AppStrings.dashBoard,),
                  const SizedBox(
                    height: 15,
                  ),
                  Responsive(
                      desktop: Row(
                        // direction: Axis.vertical,
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
                      mobile: Column(
                        children: [
                          TodayInfoCard(
                            title: 'Today Sales',
                            value: 20.4.toString(),
                            description: 'We have sold 123 items',
                            fillChartColor: AppColors.c475BE8,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TodayInfoCard(
                            title: 'Today Revenue',
                            value: 8.2.toString(),
                            description: 'Available to payout',
                            fillChartColor: AppColors.c4CE13F,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TodayInfoCard(
                            title: 'In Escrow',
                            value: 18.2.toString(),
                            description: 'Available to payout',
                            fillChartColor: AppColors.cF29A2E,
                          ),
                        ],
                      ),
                      tablet: Row(
                        // direction: Axis.vertical,
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
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Responsive(
                    desktop: IntrinsicHeight(
                      child: Flex(
                        direction: Responsive.isMobile(context) ? Axis.vertical : Axis.horizontal,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
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
                    mobile: const Column(
                      children: [
                        TotalRevenueCard(),
                        SizedBox(
                          height: 16,
                        ),
                        MostSoldItemCard()
                      ],
                    ),
                    tablet: IntrinsicHeight(
                      child: Flex(
                        direction: Responsive.isMobile(context) ? Axis.vertical : Axis.horizontal,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
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
                  ),
                  if (Responsive.isDesktop(context)) const LatestOrdersWidget()
                ],
              ),
            )
          ],
        ));
  }
}

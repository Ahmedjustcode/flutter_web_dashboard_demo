import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/core/widgets/responsive_widget.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/dash_board_view.dart';
import 'package:flutter_web_example/features/main/presentation/view/sidebar/side_bar.dart';
import 'package:flutter_web_example/features/main/presentation/view_model/main_view_model_bloc.dart';

import '../../../products/presentation/view/product_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const String route = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Responsive.isDesktop(context) ? null : const SafeArea(child: SideBar()),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) const SideBar(),
          Expanded(child: BlocBuilder<MainViewModelBloc, MainViewModelState>(
            builder: (context, state) {
              return IndexedStack(
                index: state.index,
                children: const [DashBoardView(), ProductView()],
              );
            },
          )),
        ],
      ),
    );
  }
}

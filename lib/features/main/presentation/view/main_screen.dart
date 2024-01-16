import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/widgets/responsive_widget.dart';
import 'package:flutter_web_example/features/dashboard/presentation/view/dash_board_view.dart';
import 'package:flutter_web_example/features/main/presentation/view/sidebar/side_bar.dart';



class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const String route = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         if(Responsive.isDesktop(context))SideBar(),
         const Expanded(child: IndexedStack(
           index: 0,
           children: [
             DashBoardView()
           ],
         )),
        ],
      ),
    );
  }
}

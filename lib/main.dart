import 'package:flutter/material.dart';
import 'package:flutter_web_example/config/app_router.dart';
import 'package:flutter_web_example/config/app_themes.dart';
import 'package:flutter_web_example/core/helpers/horizontal_scroll_behavior.dart';
import 'package:flutter_web_example/features/main/presentation/view/main_screen.dart';


void main() {
  runApp(const FlutterWebExample());

}

class FlutterWebExample extends StatelessWidget {
  const FlutterWebExample({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return MaterialApp(
      scrollBehavior: HorizontalScrollBehavior(),
      theme: AppThemes.theme,
      initialRoute: MainScreen.route,
      onGenerateRoute: AppRouter.onGeneratedRoutes,
    );
  }
}

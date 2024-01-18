import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/config/app_router.dart';
import 'package:flutter_web_example/config/app_themes.dart';
import 'package:flutter_web_example/core/helpers/horizontal_scroll_behavior.dart';
import 'package:flutter_web_example/di.dart';
import 'package:flutter_web_example/features/auth/presentation/auth_screen.dart';
import 'package:flutter_web_example/features/main/presentation/view/main_screen.dart';
import 'package:flutter_web_example/features/main/presentation/view_model/main_view_model_bloc.dart';
import 'package:flutter_web_example/features/products/presentation/product_view_model/product_view_model_bloc.dart';


void main() {
  registerInstances();
  runApp(const FlutterWebExample());

}

class FlutterWebExample extends StatelessWidget {
  const FlutterWebExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<MainViewModelBloc>()),
        BlocProvider(create: (context) => sl<ProductViewModelBloc>()..add(const ProductViewModelGetProducts(skipProduct: 0,true)))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: HorizontalScrollBehavior(),
        theme: AppThemes.theme,
        initialRoute: AuthScreen.route,
        onGenerateRoute: AppRouter.onGeneratedRoutes,
      ),
    );
  }
}

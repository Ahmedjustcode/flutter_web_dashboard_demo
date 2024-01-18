import 'package:flutter/material.dart';
import 'package:flutter_web_example/features/auth/presentation/auth_screen.dart';
import 'package:flutter_web_example/features/main/presentation/view/main_screen.dart';

class AppRouter{


  static const String initialRoute = MainScreen.route;

  static Route? onGeneratedRoutes(RouteSettings settings){
    switch(settings.name){
      case MainScreen.route:
        return _materialRoute(const MainScreen());
      case AuthScreen.route:
        return _materialRoute(const AuthScreen());
    }
    return null;
  }
}

 Route<dynamic> _materialRoute(Widget view) {
return MaterialPageRoute(builder: (_) => view);
}
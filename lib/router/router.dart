import 'package:flutter/material.dart';
import 'package:guidebook/views/user_view.dart';

class Routes {
  Routes.init();
  static final Routes _instance = Routes.init();
  static Routes get instance => _instance;

  Route? ongenerate(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(
          builder: (_) => UserView(),
        );
    }
  }
}

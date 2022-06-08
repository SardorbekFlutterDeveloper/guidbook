import 'package:flutter/material.dart';
import 'package:guidebook/views/user_view.dart';

class Routes {
  Routes.init();
  static final Routes _instance = Routes.init();
  static Routes get instance => _instance;

  Route? ongenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => UserView(),
        );
    }
    
 
  }
}

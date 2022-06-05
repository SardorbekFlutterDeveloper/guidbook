import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guidebook/views/user_view.dart';

class Route {
  Route  ongenerate (RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(
          builder: (context) => UserView(),
        );
    }
  }
}

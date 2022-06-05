import 'package:flutter/material.dart';
import 'package:guidebook/router/router.dart';
import 'package:guidebook/views/user_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
     initialRoute: "/loader",
      onGenerateRoute: Routes.instance.ongenerate,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:guidebook/model/user_model.dart';
import 'package:guidebook/router/router.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter ());
  Hive.registerAdapter(DataAdapter());

  await Hive.openBox<UserModel>('userssBox');
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: Routes.instance.ongenerate,
    );
  }
}

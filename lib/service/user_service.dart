import 'package:dio/dio.dart';
import 'package:guidebook/model/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ServiceUser {
  static Future getUsersinHive() async {
    Response res =
        await Dio().get("https://guidebook.com/service/v2/upcomingGuides/");
    print(res.data);
    Box userBox = await Hive.openBox<UserModel>("usersBox");
    (res.data as List).map((e) {
      userBox.add(UserModel.fromJson(e));
    });
    return (res.data as List).map((e) => UserModel.fromJson(e)).toList();
  }
}

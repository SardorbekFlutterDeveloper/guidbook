import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:guidebook/model/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ServiceUser {
  static Future<UserModel> getUsersinHive() async {
    Response res =
        await Dio().get("https://guidebook.com/service/v2/upcomingGuides/");

    Box userBox = Hive.box<UserModel>("userssBox");
    // Map<String, dynamic> data = Map.from(json.decode(res.data));
    if (res.statusCode == 200) {
      userBox.clear();
       userBox.add(UserModel.fromJson(res.data));
      
     
    }

    return UserModel.fromJson(res.data);
  }
}

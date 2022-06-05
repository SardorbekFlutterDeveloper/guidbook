
import 'package:hive_flutter/hive_flutter.dart';

part 'user_model.g.dart';
@HiveType(typeId: 1)
class UserModel {
	List<Data>? data;
  @HiveField(0)
	String? total;

	UserModel({this.data, this.total});

	UserModel.fromJson(Map<String, dynamic> json) {
		if (json['data'] != null) {
			data = <Data>[];
			json['data'].forEach((v) { data!.add(Data.fromJson(v)); });
		}
		total = json['total'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
		data['total'] = total;
		return data;
	}
}
@HiveType(typeId: 2)
class Data {

  @HiveField(0)
	String? url;

  @HiveField(1)
	String? startDate;

  @HiveField(2)
	String? endDate;

  @HiveField(3)
	String? name;

  @HiveField(4)

	String? icon;

  @HiveField(5)
	Venue? venue;

  @HiveField(6)
	String? objType;

  @HiveField(7)
	bool? loginRequired;

	Data({this.url, this.startDate, this.endDate, this.name, this.icon, this.venue, this.objType, this.loginRequired});

	Data.fromJson(Map<String, dynamic> json) {
		url = json['url'];
		startDate = json['startDate'];
		endDate = json['endDate'];
		name = json['name'];
		icon = json['icon'];
		venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
		objType = json['objType'];
		loginRequired = json['loginRequired'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = Map<String, dynamic>();
		data['url'] = this.url;
		data['startDate'] = this.startDate;
		data['endDate'] = this.endDate;
		data['name'] = this.name;
		data['icon'] = this.icon;
		if (this.venue != null) {
      data['venue'] = this.venue!.toJson();
    }
		data['objType'] = this.objType;
		data['loginRequired'] = this.loginRequired;
		return data;
	}
}

class Venue {


	

	Venue.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = Map<String, dynamic>();
		return data;
	}
}

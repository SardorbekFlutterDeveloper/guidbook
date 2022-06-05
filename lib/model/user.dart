class user {
	List<Data>? data;
	String? total;

	user({this.data, this.total});

	user.fromJson(Map<String, dynamic> json) {
		if (json['data'] != null) {
			data = <Data>[];
			json['data'].forEach((v) { data!.add(new Data.fromJson(v)); });
		}
		total = json['total'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
		data['total'] = this.total;
		return data;
	}
}

class Data {
	String? url;
	String? startDate;
	String? endDate;
	String? name;
	String? icon;
	Venue? venue;
	String? objType;
	bool? loginRequired;

	Data({this.url, this.startDate, this.endDate, this.name, this.icon, this.venue, this.objType, this.loginRequired});

	Data.fromJson(Map<String, dynamic> json) {
		url = json['url'];
		startDate = json['startDate'];
		endDate = json['endDate'];
		name = json['name'];
		icon = json['icon'];
		venue = json['venue'] != null ? new Venue.fromJson(json['venue']) : null;
		objType = json['objType'];
		loginRequired = json['loginRequired'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
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
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

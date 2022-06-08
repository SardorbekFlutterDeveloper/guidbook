import 'package:flutter/material.dart';
import 'package:guidebook/model/user_model.dart';
import 'package:guidebook/service/user_service.dart';
import 'package:hive/hive.dart';

class UserView extends StatefulWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  UserModel? _userModel;


  Box userBox = Hive.box<UserModel>('userssBox');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: FutureBuilder(
          future: ServiceUser.getUsersinHive(),
          builder: (context, AsyncSnapshot<UserModel> snap) {
            if (!snap.hasData) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (snap.hasError) {
              return Center(
                child: Text("Error: ${snap.error}"),
              );
            } else {
              var d = snap.data!;
              // title: Text("Name: ${d.data![index].name.toString()}"),

              return ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text("Name: ${d.data![index].name.toString()}"),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text("Start Data: ${d.data![index].startDate.toString()}"),
                          Text("End Data: ${d.data![index].endDate.toString()}"),
                        ],
                      ),
                      trailing: Image.network(d.data![index].icon.toString(),),
                    ),
                  );
                },
                itemCount: d.data!.length,
              );
            }
          },
        ),
      ),
    );
  }
}

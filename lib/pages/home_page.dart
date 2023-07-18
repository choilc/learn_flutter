import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/post_item.dart';
import 'package:flutter_application_1/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  List<String> users = [];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    mockUserFromServer();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          centerTitle: false,
          title: Text('5minuteflutter'),
          actions: [
            Icon(Icons.location_on_outlined),
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return PostItem(user: users[index]);
          },
        ));
  }

  mockUserFromServer() {
    for (var i = 0; i < 1000; i++) {
      users.add('User number $i');
    }
  }
}

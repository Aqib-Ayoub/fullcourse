import 'package:flutter/material.dart';
import 'package:fullcourse/widgets/post_item.dart';
import 'package:fullcourse/widgets/toolbar.dart';

class HomePage extends StatelessWidget {
  List<String> user = [];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    userFromServer();
    return Scaffold(
      appBar: Toolbar(title: 'Home', actions: [Icon(Icons.location_on)]),
      //  AppBar(
      //   title: Text('Home Page'),
      //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.location_on))],
      // ),
      body: ListView.separated(
        itemCount: user.length,
        separatorBuilder: (context, index) {
          return SizedBox(height: 20);
        },
        itemBuilder: (context, index) {
          return PostItem(userName: user[index]);
        },
      ),
    );
  }

  userFromServer() {
    for (var i = 0; i < 15; i++) {
      user.add('User $i');
    }
  }
}

import 'package:flutter/material.dart';
import 'package:fullcourse/widgets/post_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.location_on))],
      ),
      body: ListView(children: userFromServer()),
    );
  }
}

List<Widget> userFromServer() {
  List<Widget> user = [];
  for (var i = 0; i < 15; i++) {
    user.add(PostItem());
  }
  return user;
}

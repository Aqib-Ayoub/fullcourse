import 'package:flutter/material.dart';

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

Widget userItems() {
  return Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          'assets/images/test.jpg',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(width: 16),
      Text('Aqib Ayoub'),
    ],
  );
}

List<Widget> userFromServer() {
  List<Widget> user = [];
  for (var i = 0; i < 1000; i++) {
    user.add(userItems());
  }
  return user;
}

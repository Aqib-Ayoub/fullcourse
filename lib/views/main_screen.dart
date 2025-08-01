import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fullcourse/views/home_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int setIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[setIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidHeart),
            label: 'faorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'Profile',
          ),
        ],
        currentIndex: setIndex,
        onTap: (index) {
          setState(() {
            setIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        backgroundColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: Text('Favorite')),
    Center(child: Text('Add post')),
    Center(child: Text('Message')),
    Center(child: Text('User')),
  ];
}

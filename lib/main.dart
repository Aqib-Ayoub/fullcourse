import 'package:flutter/material.dart';
import 'package:fullcourse/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        // '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => 

      },
      home: HomePage(),
    );
  }
}

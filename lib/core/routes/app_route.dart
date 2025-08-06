import 'package:fullcourse/views/edit_profile_screen.dart';
import 'package:fullcourse/views/home_screen.dart';
import 'package:fullcourse/views/login_screen.dart';
import 'package:fullcourse/views/main_screen.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => MainPage(),
    '/login': (context) => LoginPage(),
    '/editProfile': (context) => EditProfilePage(),
  };
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const profile = '/profile';
  static const editProfile = '/edit-profile';
  static const logout = '/logout';
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fullcourse/core/const/app_text.dart';
import 'package:fullcourse/widgets/toolbar.dart';

enum ProfileMenu { edit, setting, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed('/editProfile');
                  break;
                case ProfileMenu.logout:
                  Navigator.pushNamed(context, '/login');
                default:
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: ProfileMenu.edit,
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.edit, size: 20.0),
                      SizedBox(width: 10),
                      Text('Edit Profile'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: ProfileMenu.logout,
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.signOutAlt, size: 20.0),
                      SizedBox(width: 10.0),
                      Text('Logout'),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),

      body: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/test.jpg'),
          ),
          SizedBox(height: 20),
          Text('Aqib Ayoub', style: AppText.subtitle1),
          Text('Bicherwara', style: AppText.body2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('479', style: AppText.title),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [Text('190', style: AppText.title), Text('Posts')],
              ),
              Column(
                children: [
                  Text('219', style: AppText.title),
                  Text('Following'),
                ],
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}

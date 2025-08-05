import 'package:flutter/material.dart';
import 'package:fullcourse/const/app_text.dart';
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
                case ProfileMenu.setting:
                  print('Setting pressed');
                  break;
                case ProfileMenu.logout:
                  print('Logout pressed');
                case ProfileMenu.edit:
                  // TODO: Handle this case.
                  throw UnimplementedError();
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('Settings'),
                  value: ProfileMenu.setting,
                ),
                PopupMenuItem(child: Text('logout'), value: ProfileMenu.logout),
              ];
            },
          ),
        ],
      ),

      body: Column(
        children: [
          CircleAvatar(
            radius: 60,
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

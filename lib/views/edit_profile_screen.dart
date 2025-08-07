import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fullcourse/core/const/app_colors.dart';
import 'package:fullcourse/widgets/app_textfield.dart';
import 'package:fullcourse/widgets/toolbar.dart';
import 'package:fullcourse/widgets/user_avatar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLight,
      appBar: Toolbar(
        backgroundColor: AppColors.primaryLight,
        title: 'Edit Profile',
        textColor: AppColors.textOnPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Stack(
              children: [
                UserAvatar(size: 60),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    // padding: EdgeInsets.all(.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: AppColors.textOnPrimary,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            AppTextfield(hintText: 'First name'),
            SizedBox(height: 16.0),
            AppTextfield(hintText: 'Last name'),
            SizedBox(height: 16.0),
            AppTextfield(hintText: 'Phone number'),
            SizedBox(height: 16.0),
            AppTextfield(hintText: 'Enter your Location'),
          ],
        ),
      ),
    );
  }
}

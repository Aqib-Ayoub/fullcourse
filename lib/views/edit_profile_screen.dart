import 'package:flutter/material.dart';
import 'package:fullcourse/widgets/app_textfield.dart';
import 'package:fullcourse/widgets/toolbar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Edit Profile'),
      body: Column(
        children: [
          AppTextfield(hintText: 'Enter your name'),
          AppTextfield(hintText: 'Enter your Email'),
          AppTextfield(hintText: 'Enter your Location'),
        ],
      ),
    );
  }
}

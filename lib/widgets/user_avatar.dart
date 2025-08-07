import 'package:flutter/material.dart';
import 'package:fullcourse/core/assets/app_images.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  const UserAvatar({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundImage: AssetImage(AppImage.profile),
      // child: Image.asset(
      //   AppImage.profile,
      //   width: size,
      //   height: size,
      //   fit: BoxFit.cover,
      // ),
    );
  }
}

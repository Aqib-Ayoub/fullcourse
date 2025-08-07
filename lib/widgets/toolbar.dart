import 'package:flutter/material.dart';
import 'package:fullcourse/core/const/app_colors.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String title;
  final List<Widget>? actions;
  const Toolbar({
    super.key,
    required this.title,
    this.actions,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: TextStyle(color: textColor ?? AppColors.textPrimary),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

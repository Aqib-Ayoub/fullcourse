import 'package:flutter/material.dart';

class AppTextfield extends StatelessWidget {
  final String hintText;
  const AppTextfield({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: TextField(
        // obscureText: true,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 18,
          ),
          border: InputBorder.none,
          hintText: hintText,
          // prefixIcon: Icon(Icons.lock, color: Colors.deepPurple),
          // suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
        ),
      ),
    );
  }
}

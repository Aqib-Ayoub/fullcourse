import 'package:flutter/material.dart';

class AppColors {
  // Primary Brand Colors
  static const Color primary = Colors.deepPurple; // Main theme color
  static const Color primaryDark = Color(0xFF4A148C); // Darker shade
  static const Color primaryLight = Color(0xFFB39DDB); // Lighter shade

  // Accent Colors
  static const Color accent = Color(0xFFFFC107); // Amber for highlights
  static const Color secondary = Color(0xFF7E57C2); // Muted purple

  // Backgrounds
  static const Color background = Color(0xFFF5F5F5); // Light background
  static const Color cardBackground = Color(0xFFFFFFFF); // White for cards

  // Text Colors
  static const Color textPrimary = Color(0xFF212121); // Dark text
  static const Color textSecondary = Color(0xFF757575); // Grey text
  static const Color textOnPrimary = Colors.white; // Text on purple

  // States
  static const Color success = Color(0xFF4CAF50); // Green for success
  static const Color error = Color(0xFFD32F2F); // Red for errors
  static const Color warning = Color(0xFFFFA000); // Amber for warnings

  // Borders & Dividers
  static const Color border = Color(0xFFBDBDBD);

  static final Color fieldColor = Color(0xFFFFFFFF).withOpacity(0.6);
}

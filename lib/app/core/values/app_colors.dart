import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color white = Color(0xFFEDF4F8);
  static const Color black = Color(0xFF172026);
  static const Color primary = Color(0xFF055AA3);
  static const Color description = Color(0xFF51564A);

  // static const Color _cardColor = Color(0xFF172026);

  // Colors to Dark Theme
  static const Color cardBackgroundDark = black;
  static const Color descriptionDark = description;
  static const Color backgroundDark = Color(0xFF121517);

  // Colors to Light Theme
  static const Color cardBackgroundLight = white;
  static const Color descriptionLight = description;
  static const Color backgroundLight = Color(0xFFD6DFE4);
}

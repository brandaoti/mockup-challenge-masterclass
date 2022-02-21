import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primary = Color(0xFF055AA3);

  static const Color _white = Color(0xFFEDF4F8);
  static const Color _cardColor = Color(0xFF172026);
  static const Color _description = Color(0xFF51564A);

  // Colors to Dark Theme
  static const Color cardDark = _cardColor;
  static const Color descriptionDark = _description;
  static const Color backgroundDark = Color(0xFF121517);

  // Colors to Light Theme
  static const Color cardLight = _white;
  static const Color descriptionLight = _description;
  static const Color backgroundLight = Color(0xFFD6DFE4);
}

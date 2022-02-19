import 'package:flutter/material.dart';
import 'package:mockup_challenge_masterclass/core/core.dart';

abstract class AppTheme {
  //
  static ThemeData theme() {
    return ThemeData(
      iconTheme: _iconTheme(),
      appBarTheme: _appBarTheme(),
      scaffoldBackgroundColor: AppColors.backgroundDark,
    );
  }

  static IconThemeData _iconTheme() {
    return const IconThemeData(
      color: Colors.white,
    );
  }

  static AppBarTheme _appBarTheme() {
    return const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.backgroundDark,
    );
  }
}

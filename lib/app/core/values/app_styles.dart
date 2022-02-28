import 'package:flutter/material.dart';

import '../core.dart';

abstract class AppStyles {
  static const TextStyle defaultTextStyle = TextStyle();

  // Texts
  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 16.0,
    color: AppColors.white,
  );
  static const TextStyle descriptionTextStyle = TextStyle(
    fontSize: 14.0,
    color: AppColors.description,
  );

  static const TextStyle showMoreTextStyle = TextStyle(
    fontSize: 12.0,
    color: AppColors.white,
  );

  static const TextStyle sourceCodeTextStyle = showMoreTextStyle;

  // Buttons
  static ButtonStyle showMoreButtonStyle = ElevatedButton.styleFrom(
    primary: AppColors.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(23.0),
    ),
  );
}

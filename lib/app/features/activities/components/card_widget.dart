import 'package:flutter/material.dart';

import 'package:mockup_challenge_masterclass/app/features/activities/components/activity_card_widget.dart';

import '../../../core/core.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  final double width;
  final double heigth;
  final Color cardBackgroundColor;

  const CardWidget({
    Key? key,
    this.width = 80,
    this.heigth = 180,
    required this.child,
    this.cardBackgroundColor = AppColors.cardBackgroundDark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(20.0), // !verificar borda
      ),
      child: child,
    );
  }
}

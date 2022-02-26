import 'package:flutter/material.dart';
import 'package:mockup_challenge_masterclass/app/features/activities/components/activity_card_widget.dart';

import '../../../core/core.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 180,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: AppColors.cardBackgroundDark,
        borderRadius: BorderRadius.circular(20.0), // !verificar borda
      ),
      child: const ActivityCardWidget(),
    );
  }
}

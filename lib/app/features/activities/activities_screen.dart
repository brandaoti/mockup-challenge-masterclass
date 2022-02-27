import 'package:flutter/material.dart';
import 'package:mockup_challenge_masterclass/app/features/activities/card_service.dart';
import 'package:mockup_challenge_masterclass/app/features/activities/components/activity_card_widget.dart';

import '../../core/components/card_widget.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  final cardService = CardService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: cardService.getCardItem.length,
        itemBuilder: (context, index) {
          final item = cardService.getCardItem[index];
          return CardWidget(
            child: ActivityCardWidget(
              activityCardItem: item,
            ),
          );
        },
      ),
    );
  }
}

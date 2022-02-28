import 'package:flutter/material.dart';

import '../../core/components/components.dart';
import 'activities.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  final _service = ActivityCardService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _service.getActivityItem.length,
        itemBuilder: (context, index) {
          final item = _service.getActivityItem[index];
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

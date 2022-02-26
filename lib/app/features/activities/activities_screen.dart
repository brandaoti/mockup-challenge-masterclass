import 'package:flutter/material.dart';
import 'package:mockup_challenge_masterclass/app/core/core.dart';
import 'package:mockup_challenge_masterclass/app/features/activities/components/activity_card_widget.dart';

import 'components/card_widget.dart';
import 'model/activity_card_item.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  final List<ActivityCardItem> _activityCardItem = [
    ActivityCardItem(
      image: AppImages.iconDarkRunning,
      title: 'Animações',
      subtitle: 'Estudos sobre animações implícitas e controladas.',
    ),
    ActivityCardItem(
      image: AppImages.iconDarkGlasses,
      title: 'Leitura de Mockup',
      subtitle: 'Aplicação da técnica de leitura de mockup.',
    ),
    ActivityCardItem(
      image: AppImages.iconDarkToys,
      title: 'Playground',
      subtitle: 'Ambiente destinado a testes e estudos em geral.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _activityCardItem.length,
        itemBuilder: (context, index) {
          return CardWidget(
            child: ActivityCardWidget(
              activityCardItem: _activityCardItem[index],
            ),
          );
        },
      ),
    );
  }
}

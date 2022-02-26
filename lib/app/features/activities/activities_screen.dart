import 'package:flutter/material.dart';

import 'components/card_widget.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return CardWidget();
        },
      ),
    );
  }
}

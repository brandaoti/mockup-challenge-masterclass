import 'package:flutter/material.dart';
import 'package:mockup_challenge_masterclass/core/core.dart';
import 'package:mockup_challenge_masterclass/features/features.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutterando Masterclass',
      theme: AppTheme.theme(),
      home: const HomeScreen(),
    );
  }
}

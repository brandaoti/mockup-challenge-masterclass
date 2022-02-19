import 'package:flutter/material.dart';
import 'package:mockup_challenge_masterclass/core/core.dart';

import 'components/nav_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          AppImages.logo,
          height: 50,
          width: 160,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
      bottomNavigationBar: NavBarWidget(),
    );
  }
}

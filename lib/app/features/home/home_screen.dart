import 'package:flutter/material.dart';
import 'package:mockup_challenge_masterclass/app/features/activities/activities_screen.dart';

import '../../core/core.dart';
import 'components/nav_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List<Widget> screens = [
    const ActivitiesScreen(),
    const ActivitiesScreen(),
    const ActivitiesScreen(),
  ];

  void onChangePage(int newIndex) {
    index = newIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Image.asset(
          AppImages.logo,
          height: 50,
          width: 160,
        ),
      ),
      body: screens[index],
      bottomNavigationBar: NavBarWidget(
        onTap: (value) => setState(() {
          onChangePage(value);
        }),
      ),
    );
  }
}

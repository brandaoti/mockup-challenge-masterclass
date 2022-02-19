import 'package:flutter/material.dart';
import 'package:mockup_challenge_masterclass/core/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mockup_challenge_masterclass/core/values/app_colors.dart';

const Duration _duration = Duration(milliseconds: 100);

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _navBar(
            index: 0,
            icon: const Icon(MdiIcons.bullseye),
            title: 'Atividades',
          ),
          _divider(),
          _navBar(
            index: 1,
            icon: const Icon(MdiIcons.github),
            title: 'Repositórios',
          ),
          _divider(),
          _navBar(
            index: 2,
            icon: const Icon(Icons.person),
            title: 'Sobre o Dev',
          ),
        ],
      ),
    );
  }

  Widget _navBar({
    required Widget icon,
    String? title,
    int index = 0,
  }) {
    final selectedIcon =
        index == _selectedIndex ? AppColors.cardDark : Colors.transparent;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _icons(
          icon,
          index,
          selectedIcon,
        ),
        const SizedBox(height: 7.0),
        Text(
          title!,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.backgroundLight,
          ),
        ),
      ],
    );
  }

  Widget _icons(Widget icon, int index, Color selectedIcon) {
    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: AnimatedContainer(
        duration: _duration,
        curve: Curves.linearToEaseOut,
        child: icon,
        width: 48,
        height: 26,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: selectedIcon,
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(
      width: 1,
      height: 40,
      color: AppColors.descriptionLight, // TODO, Criar uma cor para o divider
    );
  }
}

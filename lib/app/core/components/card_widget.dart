import 'package:flutter/material.dart';

import '../core.dart';

class CardWidget extends StatelessWidget {
  final Widget child;

  final double width;
  final double heigth;

  final Color cardBackgroundColor;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const CardWidget({
    Key? key,
    this.width = 80,
    this.heigth = 180,
    required this.child,
    this.cardBackgroundColor = AppColors.cardBackgroundDark,
    this.margin = const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
    this.padding = const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(20.0), // !verificar borda
      ),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

import '../core.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final TextStyle? style;
  final TextAlign textAlign;

  const TextWidget(
    this.title, {
    Key? key,
    this.style = AppStyles.defaultTextStyle,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
      textAlign: textAlign,
    );
  }
}

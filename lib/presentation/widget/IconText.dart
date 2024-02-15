import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconWithText extends StatelessWidget {
  final String icon;
  final String text;

  IconWithText({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SvgPicture.asset(icon),
        Text(
          text,
          style: TextStyle(fontSize: 10.0),
        )
      ],
    );
  }
}

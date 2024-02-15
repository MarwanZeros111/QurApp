import 'package:flutter/material.dart';

class Texxt extends StatelessWidget {
  const Texxt(
      {super.key,
      required this.text,
      required this.fontsize,
      this.fontwight,
      required this.color});
  final String text;
  final double fontsize;
  final dynamic fontwight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontsize, fontWeight: fontwight, color: color),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerSplash extends StatelessWidget {
  const ContainerSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color(0xff3B1E77),
        ),
        child: SvgPicture.asset('lib/assets/images/splash.svg'),
      ),
    );
  }
}

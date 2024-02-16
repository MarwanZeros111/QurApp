import 'package:flutter/material.dart';
import 'package:quran_app/assets/constant/TextFixed.dart';
import 'package:quran_app/presentation/widget/Bottom_Splash.dart';
import 'package:quran_app/presentation/widget/Container_spalsh.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Texxt(
            text: "Quran App",
            fontsize: 30,
            color: Colors.grey,
            fontwight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          Texxt(
            text: "Learn Quran and",
            fontsize: 15,
            color: Colors.grey,
          ),
          Texxt(
            text: "Recite Once Everyday",
            fontsize: 15,
            color: Colors.grey,
          ),
          SizedBox(
            height: 40,
          ),
          ContainerSplash(),
          BottomSplash()
        ],
      ),
    );
  }
}

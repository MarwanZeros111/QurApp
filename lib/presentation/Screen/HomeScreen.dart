import 'package:flutter/material.dart';
import 'package:quran_app/assets/constant/TextFixed.dart';
import 'package:quran_app/presentation/widget/ListView_Home.dart';
import 'package:quran_app/presentation/widget/Stac_Home.dart';
import 'package:quran_app/presentation/widget/appbar_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppHome(),
          Texxt(text: 'Asslamualaikum', fontsize: 18, color: Color(0xff8789A3)),
          SizedBox(
            height: 4,
          ),
          Texxt(
            text: 'Marwan Ragab',
            fontsize: 24,
            color: Color(0xff8789A3),
            fontwight: FontWeight.w500,
          ),
          SizedBox(
            height: 30,
          ),
          StackHome(),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListViewHome(),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/assets/constant/TextFixed.dart';
import 'package:quran_app/presentation/widget/ListView_Home.dart';
import 'package:quran_app/presentation/widget/Stac_Home.dart';
import 'package:quran_app/presentation/widget/appbar_home.dart';
import 'package:quran_app/web_servise/cubit/surah_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<SurahCubit>(context).getSurah();
    // TODO: implement initState
    super.initState();
  }

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
          ListViewHome()
        ],
      ),
    );
  }
}

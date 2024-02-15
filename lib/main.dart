import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/presentation/Screen/Splash_View.dart';
import 'package:quran_app/web_servise/Web_Servise.dart';
import 'package:quran_app/web_servise/cubit/surah_cubit.dart';

void main() {
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SurahCubit(ApiService())..getSurah(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const SplashView(),
      ),
    );
  }
}

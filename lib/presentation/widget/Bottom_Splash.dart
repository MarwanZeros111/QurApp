import 'package:flutter/material.dart';
import 'package:quran_app/presentation/Screen/HomeScreen.dart';

class BottomSplash extends StatelessWidget {
  const BottomSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
      },
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xffFFD08A)),
      ),
      child: const Text(
        'Get Started',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

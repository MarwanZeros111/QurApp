import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('lib/assets/images/menu-icon.svg'),
          ),
          const SizedBox(
            width: 24,
          ),
          const Text(
            "Quran App",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}

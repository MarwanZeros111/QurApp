import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: const Text("Quran App",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('lib/assets/images/menu-icon.svg'),
      ),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
    );
  }
}

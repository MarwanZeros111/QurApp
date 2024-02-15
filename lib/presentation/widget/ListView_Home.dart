import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/assets/constant/TextFixed.dart';
import 'package:quran_app/presentation/Screen/DetailsScreen.dart';
import 'package:quran_app/presentation/widget/IconText.dart';
import 'package:quran_app/web_servise/cubit/surah_cubit.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurahCubit, SurahState>(
      builder: (context, state) {
        if (state is SurahLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SurahSuccess) {
          return Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailsScreen()),
                    );
                  },
                  child: SizedBox(
                    height: 62,
                    width: double.infinity,
                    child: Row(
                      children: [
                        IconWithText(
                            icon: "lib/assets/images/nomor-surah.svg",
                            text: "1"),
                        const SizedBox(
                          width: 1,
                        ),
                        const Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Texxt(
                                text: "alo",
                                fontsize: 20,
                                color: Color(0xffA44AFF)),
                            Row(
                              children: [
                                Texxt(
                                    text: 'Alo',
                                    fontsize: 12,
                                    color: Color(0xff8789A3)),
                                SizedBox(
                                  width: 10,
                                ),
                                Texxt(
                                    text: "alo",
                                    fontsize: 12,
                                    color: Color(0xff8789A3))
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Texxt(
                            text: 'Alo', fontsize: 20, color: Color(0xFFA44AFF))
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SurahFaliure) {
          return const Text("try again");
        } else {
          return const Text('internet disconectted');
        }
      },
    );
  }
}

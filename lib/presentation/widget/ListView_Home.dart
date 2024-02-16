import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/assets/constant/TextFixed.dart';
import 'package:quran_app/presentation/Screen/DetailsScreen.dart';
import 'package:quran_app/presentation/widget/IconText.dart';
import 'package:quran_app/web_servise/cubit/surah_cubit.dart';

class ListViewHome extends StatefulWidget {
  const ListViewHome({super.key});

  @override
  State<ListViewHome> createState() => _ListViewHomeState();
}

class _ListViewHomeState extends State<ListViewHome> {
  List surahdetails = [];
  void initState() {
    // TODO: implement initState
    getsurah();
    super.initState();
  }

  Future getsurah() async {
    try {
      surahdetails = await BlocProvider.of<SurahCubit>(context).getSurah();
    } catch (e) {}
  }

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
              itemCount: surahdetails.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(audio: surahdetails[index])),
                    );
                  },
                  child: SizedBox(
                    height: 62,
                    width: double.infinity,
                    child: Row(
                      children: [
                        IconWithText(
                            icon: "lib/assets/images/nomor-surah.svg",
                            text: "${surahdetails[index]['nomor'].toString()}"),
                        const SizedBox(
                          width: 1,
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Texxt(
                                text: "${surahdetails[index]['nama_latin']}",
                                fontsize: 20,
                                color: Color(0xffA44AFF)),
                            Row(
                              children: [
                                Texxt(
                                    text:
                                        '${surahdetails[index]['tempat_turun']}',
                                    fontsize: 12,
                                    color: Color(0xff8789A3)),
                                SizedBox(
                                  width: 10,
                                ),
                                Texxt(
                                    text:
                                        "${surahdetails[index]['jumlah_ayat']} Verses",
                                    fontsize: 12,
                                    color: Color(0xff8789A3))
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Texxt(
                            text: '${surahdetails[index]['nama']}',
                            fontsize: 20,
                            color: Color(0xFFA44AFF))
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

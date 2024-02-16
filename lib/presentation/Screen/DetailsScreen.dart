import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/assets/constant/TextFixed.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.audio}) : super(key: key);

  final dynamic audio;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final player = AudioPlayer();
  bool isPlaying = false;

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void _play(String audioUrl) async {
    setState(() {
      isPlaying = true;
    });
    await player.play(UrlSource(audioUrl));
  }

  void _pause() async {
    await player.pause();
    setState(() {
      isPlaying = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Text(widget.audio['nama']),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Stack(
          children: [
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [
                        0,
                        .6,
                        1
                      ],
                      colors: [
                        Color(0xFFDF98FA),
                        Color(0xFFB070FD),
                        Color(0xFF9055FF)
                      ])),
              child: Opacity(
                  opacity: 0.1,
                  child: SvgPicture.asset("lib/assets/images/quran.svg")),
            ),
            Column(
              children: [
                SizedBox(height: 30),
                Text(
                  widget.audio['nama'],
                  style: TextStyle(fontSize: 26),
                ),
                Text(
                  widget.audio['nama_latin'],
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.white,
                  endIndent: 40,
                  indent: 40,
                  thickness: 0.4,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.audio['tempat_turun'],
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text('${widget.audio['jumlah_ayat']} Verses'),
                  ],
                ),
                Spacer(),
                Text(
                  'بسم الله الرحمن الرحيم',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color(0xff863ED5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Container(
                                width: 27,
                                height: 27,
                                decoration: BoxDecoration(
                                    color: Color(0xff863ED5),
                                    borderRadius:
                                        BorderRadius.circular(27 / 2)),
                                child: Center(
                                  child: Texxt(
                                    fontwight: FontWeight.w500,
                                    text: "${widget.audio['nomor']}",
                                    fontsize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                            const Spacer(),
                            const Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            IconButton(
                              onPressed: isPlaying
                                  ? _pause
                                  : () => _play(widget.audio['audio']),
                              icon: Icon(
                                isPlaying ? Icons.pause : Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            const Icon(
                              Icons.bookmark_outline,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

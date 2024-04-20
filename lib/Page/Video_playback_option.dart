import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:os_project/comp/Switchcomp.dart';

class Video_playback_option extends StatelessWidget {
  const Video_playback_option({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF08B09E),
          title: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  "Video Playback Option",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 75),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(height: 40),
            Row(

              children: [
                Text(
                  "Play audio in background",
                  style: TextStyle(
                    color: Color(0xFF08B09E),
                    fontSize: 30,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 35),

                Switchbtn(),

              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  "Auto-play next lecture",
                  style: TextStyle(
                    color: Color(0xFF08B09E),
                    fontSize: 30,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 75),
                Switchbtn(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

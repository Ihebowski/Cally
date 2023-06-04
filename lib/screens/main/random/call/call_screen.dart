import 'package:cally/screens/main/random/match/match_screen.dart';
import 'package:cally/screens/main/random/shared/countdown_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cally/constants/colors.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:cally/screens/main/random/shared/circular_button.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        // title: const Text("Incall"),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [
                SizedBox(height: 25.0),
                CircleAvatar(
                  radius: 70,
                  backgroundImage:
                      AssetImage("assets/images/avatars/male/geek.png"),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Ihebowski",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Tunis, Tunisia",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const CountdownDisplay(),
                const SizedBox(height: 10.0),
                const Text(
                  "You have 10 minutes to chat with your match.",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircularButton(
                      color: accentColor,
                      icon: IconlyBold.danger,
                      function: () {},
                    ),
                    CircularButton(
                      color: accentColor,
                      icon: IconlyBold.voice,
                      function: () {},
                    ),
                    CircularButton(
                      color: Colors.redAccent,
                      icon: IconlyBold.callMissed,
                      function: () => Get.offAll(const MatchScreen()),
                    ),
                  ],
                ),
                const SizedBox(height: 40.0)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

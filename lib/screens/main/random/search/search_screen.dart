import 'package:avatar_glow/avatar_glow.dart';
import 'package:cally/screens/main/main_screen.dart';
import 'package:cally/screens/main/random/call/call_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cally/constants/colors.dart';

import '../shared/countup_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 15), () => Get.off(() => const CallScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        // title: const Text("Waiting A Match"),
        elevation: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: AvatarGlow(
              endRadius: 140.0,
              showTwoGlows: true,
              duration: Duration(seconds: 2),
              child: CircleAvatar(
                radius: 80.0,
                backgroundImage:
                    AssetImage("assets/images/avatars/female/gamer.png"),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: accentColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CountUpDisplay(),
                const SizedBox(height: 10.0),
                RichText(
                  text: const TextSpan(
                    text: "Estimated Waiting Time ",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18.0,
                    ),
                    children: [
                      TextSpan(
                        text: "14:35",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25.0),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 300, height: 60),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(const MainScreen());
                    },
                    child: const Text(
                      "Leave",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

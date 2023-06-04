import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cally/constants/colors.dart';
import 'package:cally/screens/main/random/search/search_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        // title: const Text("Random"),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  "assets/images/people-2.png",
                  width: 270,
                  height: 270,
                ),
              ),
            ),
            Column(
              children: [
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 300, height: 60),
                  child: ElevatedButton(
                    onPressed: () => Get.off(const SearchScreen()),
                    child: const Text(
                      "Start Now",
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
                const SizedBox(height: 15.0),
                const Text(
                  "We'll match you with someone with same intrests as you.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 50.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

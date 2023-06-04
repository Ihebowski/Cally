import 'package:cally/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:cally/constants/colors.dart';
import 'package:cally/screens/main/random/shared/circular_button.dart';
import 'package:get/get.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(""),
        elevation: 0.0,
        backgroundColor: backgroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                const CircleAvatar(
                  radius: 100.0,
                  backgroundImage:
                      AssetImage("assets/images/avatars/female/gamer.png"),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Anna",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Would you like to match?",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 22.0,
                  ),
                ),
                const SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CircularButton(
                          color: Colors.redAccent,
                          icon: Icons.close_rounded,
                          function: () => Get.offAll(const MainScreen()),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Refuse",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircularButton(
                          color: Colors.green,
                          icon: Icons.check_rounded,
                          function: () {},
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Match",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 80.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

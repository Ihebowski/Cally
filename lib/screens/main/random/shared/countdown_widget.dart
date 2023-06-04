import 'package:flutter/material.dart';
import 'dart:async';

class CountdownDisplay extends StatefulWidget {
  // final int duration;
  const CountdownDisplay({Key? key}) : super(key: key);

  @override
  State<CountdownDisplay> createState() => _CountdownDisplayState();
}

class _CountdownDisplayState extends State<CountdownDisplay> {
  Duration _duration = const Duration(minutes: 10);
  late Timer timer;

  @override
  void initState() {
    if (mounted) {
      startTimer();
    }

    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => sustractTime());
  }

  void sustractTime() {
    const reduceSecondBy = 1;

    setState(() {
      final seconds = _duration.inSeconds - reduceSecondBy;
      if (seconds < 0) {
        timer.cancel();
      } else {
        _duration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(_duration.inMinutes.remainder(60));
    final seconds = twoDigits(_duration.inSeconds.remainder(60));

    return Text(
      "$minutes:$seconds",
      style: const TextStyle(
        fontSize: 48.0,
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),
    );
  }
}

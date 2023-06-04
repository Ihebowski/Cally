import 'package:flutter/material.dart';
import 'dart:async';

class CountUpDisplay extends StatefulWidget {
  const CountUpDisplay({Key? key}) : super(key: key);

  @override
  State<CountUpDisplay> createState() => _CountUpDisplayState();
}

class _CountUpDisplayState extends State<CountUpDisplay> {
  Duration _duration = const Duration();
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
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }

  void addTime() {
    const second = 1;

    setState(() {
      final seconds = _duration.inSeconds + second;
      _duration = Duration(seconds: seconds);
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
        color: Colors.white,
        fontSize: 30.0,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

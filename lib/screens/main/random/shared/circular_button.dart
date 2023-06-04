import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final VoidCallback function;
  const CircularButton({
    Key? key,
    required this.color,
    required this.icon,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: IconButton(
        iconSize: 35.0,
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        onPressed: function,
      ),
    );
  }
}

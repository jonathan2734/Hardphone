import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({required this.title, super.key});

  final String title;

  @override
  Widget build(context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 45,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}

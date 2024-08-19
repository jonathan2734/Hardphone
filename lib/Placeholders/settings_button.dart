import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton(this.userText, this.pressButton, {super.key});

  final String userText;
  final void Function() pressButton;

  @override
  Widget build(context) {
    return FilledButton(
      style: FilledButton.styleFrom(backgroundColor: const Color.fromARGB(255, 21, 127, 214)),
      onPressed: pressButton,
      child: Container(
        padding: const EdgeInsets.only(bottom: 6, top: 6),
        child: Text(
          userText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            height: 2.3,
          ),
        ),
      ),
    );
  }
}

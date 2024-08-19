import 'package:flutter/material.dart';
import 'package:hardphone/Placeholders/title_text.dart';

class Components extends StatefulWidget {
  const Components({required this.screen, super.key});

  final void Function(int screenIndex) screen;

  @override
  State<Components> createState() {
    return _ComponentsState();
  }
}

class _ComponentsState extends State<Components> {
  @override
  Widget build(context) {
    return Column(
      children: [
        const SizedBox(
          height: 65,
        ),
        Image.asset(
          'assets/images/Motherboard.png',
          height: 120,
        ),
        const SizedBox(
          height: 20,
        ),
        const TitleText(title: 'Componentes'),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                widget.screen(4);
              },
              child: Image.asset(
                'assets/images/Processor.png',
                height: 120,
                width: 80,
              ),
            ),
            const SizedBox(width: 40),
            OutlinedButton(
              onPressed: () {
                widget.screen(5);
              },
              child: Image.asset(
                'assets/images/Memory.png',
                height: 120,
                width: 80,
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                widget.screen(6);
              },
              child: Image.asset(
                'assets/images/Battery.png',
                height: 120,
                width: 80,
              ),
            ),
            const SizedBox(width: 40),
            OutlinedButton(
              onPressed: () {
                widget.screen(7);
              },
              child: Image.asset(
                'assets/images/System.png',
                height: 120,
                width: 80,
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                widget.screen(8);
              },
              child: Image.asset(
                'assets/images/Sensor.png',
                height: 120,
                width: 80
              ),
            ),
            const SizedBox(width: 40),
            OutlinedButton(
              onPressed: () {
                widget.screen(9);
              },
              child: Image.asset(
                'assets/images/Wifi.png',
                height: 120,
                width: 80,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

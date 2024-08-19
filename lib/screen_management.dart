import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hardphone/Hardware/battery.dart';
import 'package:hardphone/Hardware/sensor.dart';
import 'package:hardphone/Hardware/memory.dart';
import 'package:hardphone/Hardware/network.dart';
import 'package:hardphone/Hardware/system.dart';

import 'package:hardphone/Hardware/cpu.dart';
import 'package:hardphone/MainScreens/home.dart';
import 'package:hardphone/MainScreens/components.dart';
import 'package:hardphone/nav_icons.dart';
import 'package:hardphone/MainScreens/performance.dart';
import 'package:hardphone/MainScreens/settings.dart';

class ScreenManagement extends StatefulWidget {
  const ScreenManagement({super.key});

  @override
  State<ScreenManagement> createState() {
    return _ScreenManagementState();
  }
}

class _ScreenManagementState extends State<ScreenManagement> {
  Widget activeScreen = const Home();

  void switchScreen(index) {
    setState(
      () {
        if (index == 0) {
          activeScreen = const Home();
        } else if (index == 1) {
          activeScreen = Components(screen: switchScreen);
        } else if (index == 2) {
          activeScreen = const Performance();
        } else if (index == 3) {
          activeScreen = const Settings();
        } else if (index == 4) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => const Cpu(),
            ),
          );
        } else if (index == 5) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => const Memory(),
            ),
          );
        } else if (index == 6) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => BatteryScreen(),
            ),
          );
        } else if (index == 7) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => const System(),
            ),
          );
        } else if (index == 8) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => const Sensor(),
            ),
          );
        } else if (index == 9) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => const Network(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(child: activeScreen),
      bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {
            switchScreen(index);
          },
          height: 60,
          items: NavIcons().navIcons),
    );
  }
}

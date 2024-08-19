import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hardphone/ConfigScreens/app_list.dart';
import 'package:hardphone/Models/about.dart';
import 'package:hardphone/Placeholders/custom_dialog.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hardphone/Placeholders/title_text.dart';
import 'package:hardphone/Placeholders/settings_button.dart';
import 'package:hardphone/ConfigScreens/contact.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() {
    return _SettingsState();
  }
}

class _SettingsState extends State<Settings> {
  void closeAppUsingExit() {
    exit(0);
  }

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 65,
          ),
          Image.asset(
            'assets/images/Tools.png',
            height: 120,
          ),
          const SizedBox(
            height: 20,
          ),
          const TitleText(title: 'Configurações'),
          const SizedBox(
            height: 25,
          ),
          SettingsButton('Aplicativos instalados', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AppListScreen(),
              ),
            );
          }),
          const SizedBox(
            height: 20,
          ),
          SettingsButton('Avaliar aplicativo', () {
            setState(() {
              launchUrl(Uri.parse("https://play.google.com"),
                  mode: LaunchMode.platformDefault);
            });
          }),
          const SizedBox(
            height: 20,
          ),
          SettingsButton('Fale conosco', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => Contact(),
              ),
            );
            Contact();
          }),
          const SizedBox(
            height: 20,
          ),
          SettingsButton('Sobre nós', () {
            CustomDialog().initCustomDialog(context, About());
          }),
          const SizedBox(
            height: 20,
          ),
          SettingsButton(
            'Sair',
            closeAppUsingExit,
          ),
        ],
      ),
    );
  }
}

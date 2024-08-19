import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({super.key});
  @override
  Widget build(BuildContext context) {
    return about;
  }

  final Widget about = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 330,
    width: 350,
    child: const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Sobre nós",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            'A HardPhone é uma solução especializada em tecnologia de dispositivos móveis e tem como objetivo ajudar você a entender sobre seu dispositivo e os componentes que constituem seu hardware',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Versão: 0.0.1"),
        ],
      ),
    ),
  );
}

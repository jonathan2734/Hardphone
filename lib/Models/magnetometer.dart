import 'package:flutter/material.dart';

class Magnetometer extends StatelessWidget {
  Magnetometer({super.key});
  @override
  Widget build(BuildContext context) {
    return magnetometer;
  }

  final Widget magnetometer = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Magnetometro",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            "Um magnetômetro é um sensor que mede a força e a direção dos campos magnéticos. Ele funciona como uma bússola digital, detectando o campo magnético da Terra para determinar a orientação do dispositivo.",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 20),
          Text(
            "Em smartphones, o magnetômetro é usado para indicar onde fica o norte, ajudando em aplicativos de mapas e navegação. Em outras aplicações, ele pode ser utilizado para detectar metais, monitorar campos magnéticos em pesquisas científicas, ou até mesmo em arqueologia para encontrar artefatos enterrados. Em resumo, um magnetômetro mede o magnetismo ao seu redor e ajuda a entender direções e a localizar coisas.",
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    ),
  );
}

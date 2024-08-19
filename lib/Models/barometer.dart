import 'package:flutter/material.dart';

class Barometer extends StatelessWidget {
  Barometer({super.key});
  @override
  Widget build(BuildContext context) {
    return barometer;
  }

  final Widget barometer = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Barometro",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            "Um barômetro é um sensor que mede a pressão atmosférica, que é a força exercida pelo ar sobre a superfície da Terra. A pressão atmosférica pode variar com a altitude e as condições meteorológicas, e o barômetro é usado para detectar essas mudanças.",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 20),
          Text(
            "Em dispositivos móveis, como smartphones, um barômetro ajuda a melhorar a precisão dos sistemas de GPS, determinando a altitude em que você está. Ele também pode ser usado para prever mudanças no clima, já que uma queda rápida na pressão atmosférica pode indicar que uma tempestade está se aproximando.",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 20),
          Text(
            "Resumindo, um barômetro mede como o ar está pressionando ao seu redor e pode dizer se você está em um lugar alto ou baixo e se o tempo pode mudar.",
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';

class Accelerometer extends StatelessWidget {
  Accelerometer({super.key});
  @override
  Widget build(BuildContext context) {
    return accelerometer;
  }

  final Widget accelerometer = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Acelerometro",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            "Um acelerômetro é um sensor que mede a aceleração, ou seja, a taxa de variação da velocidade em relação ao tempo. Ele pode detectar mudanças de movimento em várias direções (eixos X, Y e Z) e é amplamente utilizado em dispositivos móveis, como smartphones e tablets, para detectar a orientação do dispositivo, registrar passos, ou mesmo para jogos que utilizam o movimento.",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 20),
          Text(
            "Os acelerômetros também são utilizados em diversas outras aplicações, como na engenharia, para medir vibrações em máquinas; na medicina, para monitorar movimentos corporais; e em veículos, para ativar sistemas de segurança, como airbags.",
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    ),
  );
}

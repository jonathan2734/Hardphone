import 'package:flutter/material.dart';

class Gyroscope extends StatelessWidget {
  Gyroscope({super.key});
  @override
  Widget build(BuildContext context) {
    return gyroscope;
  }

  final Widget gyroscope = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Giroscopio",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            "Um giroscópio é um sensor que mede a orientação e a rotação de um objeto em torno de seus eixos. Ele complementa o acelerômetro em dispositivos móveis, ajudando a determinar a direção precisa do movimento e a manter a estabilidade em sistemas de navegação, drones e câmeras.",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 20),
          Text(
            "Imagine que você está girando uma bola em diferentes direções. Um giroscópio é como um sensor que percebe para onde e quanto a bola está girando. Ele detecta mudanças de direção e rotação, ajudando a entender como algo está se movendo. Por exemplo, quando você gira seu celular para jogar um jogo ou ver um vídeo na horizontal, o giroscópio sabe que você o virou e ajusta a tela",
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    ),
  );
}

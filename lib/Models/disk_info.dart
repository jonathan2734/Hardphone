import 'package:flutter/material.dart';

class DiskInfo extends StatelessWidget {
  DiskInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return disk;
  }

  final Widget disk = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Memória Flash \n(Disco)",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'A memória flash é um tipo de armazenamento não volátil, o que significa que ela retém os dados armazenados mesmo quando a energia é desligada. É amplamente utilizada em diversos dispositivos eletrônicos devido à sua eficiência, durabilidade e capacidade de armazenamento. ',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              'Características e usos da memória flash:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "1. Não Volátil: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Diferente da RAM, a memória flash mantém os dados armazenados mesmo sem alimentação elétrica. Isso a torna ideal para armazenar dados permanentes. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "2. Rapidez e Eficiência: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Apesar da memória flash não possuir a mesma velocidade que a memória RAM, ela é mais rápida em comparação a outros tipos de memórias não voláteis, oferecendo tempos de acesso rápidos e boa eficiência energética. Isso a torna adequada para dispositivos móveis e outros aparelhos que requerem desempenho rápido e baixo consumo de energia. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "3. Capacidade de Armazenamento: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "A capacidade da memória flash varia de alguns megabytes a vários terabytes, dependendo da aplicação e do dispositivo. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

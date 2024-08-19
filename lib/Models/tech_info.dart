import 'package:flutter/material.dart';

class TechInfo extends StatelessWidget {
  TechInfo({super.key, required this.componentInfo});

  final String? componentInfo;
  Widget buildInfo(String? inf) {
    if (inf == "lipoly") {
      return lipoly;
    } else {
      return liion;
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildInfo(componentInfo);
  }

  final Widget lipoly = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Bateria Li-poly",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Uma bateria Li-poly (ou LiPo, abreviação de Lithium Polymer) é um tipo de bateria recarregável de íon de lítio que utiliza um eletrólito de polímero em vez de um eletrólito líquido. \n \nEssas baterias são populares em dispositivos eletrônicos portáteis, como smartphones, tablets, laptops, drones e outros dispositivos devido às suas vantagens específicas. ',
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 20),
          const Text(
            'Principais características das baterias LiPo:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "1. Alta Densidade de Energia: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "As baterias LiPo oferecem uma alta densidade de energia, o que significa que elas podem armazenar uma quantidade significativa de energia em um espaço relativamente pequeno.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "2. Leveza: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Devido ao uso de um eletrólito de polímero em vez de um líquido, as baterias LiPo são mais leves que outras baterias recarregáveis, o que as torna ideais para dispositivos portáteis e drones.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "3. Flexibilidade de Formato: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "As baterias LiPo podem ser fabricadas em várias formas e tamanhos, o que oferece mais flexibilidade no design dos dispositivos. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "4. Baixa Taxa de Autodescarga: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Elas têm uma taxa de autodescarga mais baixa em comparação com outras baterias recarregáveis, o que significa que mantêm a carga por mais tempo quando não estão em uso. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  final Widget liion = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Bateria Li-ion",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Uma bateria de íon de lítio (ou bateria Li-Ion) é um tipo de bateria recarregável amplamente utilizada em dispositivos eletrônicos portáteis, veículos elétricos e armazenamento de energia ',
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 20),
          const Text(
            'Principais características das baterias Li-Ion:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "1. Alta Densidade de Energia: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "As baterias LiPo oferecem uma alta densidade de energia, o que significa que elas podem armazenar uma quantidade significativa de energia em um espaço relativamente pequeno.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "2. Vida Útil: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "As baterias Li-ion têm uma vida útil relativamente longa em comparação com outras tecnologias de baterias. No entanto, a vida útil pode ser afetada por fatores como ciclos de carga, temperatura e uso.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "3. Eficiência: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "As baterias Li-ion são altamente eficientes em termos de carga e descarga, com perdas mínimas de energia ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "4. Baixa Taxa de Autodescarga: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Elas apresentam uma baixa taxa de autodescarga, o que significa que perdem pouca energia quando não estão em uso ",
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

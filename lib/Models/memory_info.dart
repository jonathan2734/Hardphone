import 'package:flutter/material.dart';

class MemoryInfo extends StatelessWidget {
  MemoryInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return memory;
  }

  final Widget memory = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Memória RAM",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'A memória RAM (Memória de acesso aleatório) é um tipo de memória volátil usada em computadores e outros dispositivos eletrônicos para armazenar dados temporariamente enquanto o dispositivo está ligado e em operação. ',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              'Pontos chave sobre a RAM:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "1. Volátil: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "A RAM perde seus dados quando o dispositivo é desligado. Isso a diferencia de outros tipos de armazenamento, como discos rígidos ou SSDs, que retêm dados mesmo quando desligados. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "2. Acesso Rápido: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "A RAM permite acesso rápido aos dados, o que a torna ideal para armazenar informações temporárias que o processador precisa acessar rapidamente. Isso melhora o desempenho geral do sistema. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "3. Usada para Executar Programas: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Quando você abre um programa no seu dispositivo, os dados desse programa são carregados da memória de armazenamento (como um disco rígido) para a RAM, onde podem ser acessados rapidamente pelo processador. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "4. Capacidade e Velocidade: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "A quantidade de RAM em um sistema pode variar, e mais RAM geralmente permite que você execute mais programas simultaneamente sem degradação de desempenho. A velocidade da RAM também pode variar, com RAM mais rápida permitindo um acesso mais rápido aos dados. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "5. Tipos de RAM: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Existem diferentes tipos de RAM, incluindo DDR (Taxa de dados dupla), DDR2, DDR3, DDR4, e DDR5, cada um oferecendo melhorias em velocidade e eficiência. ",
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

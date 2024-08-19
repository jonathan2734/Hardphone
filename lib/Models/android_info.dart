import 'package:flutter/material.dart';

class AndroidInfo extends StatelessWidget {
  AndroidInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return android;
  }

  final Widget android = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Android",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'O Android é um sistema operacional baseado no núcleo Linux, desenvolvido inicialmente pela empresa Android Inc., que foi adquirida pelo Google em 2005. Ele é projetado principalmente para dispositivos móveis, como smartphones e tablets, mas também é utilizado em outros dispositivos, incluindo televisores, relógios inteligentes, automóveis e eletrodomésticos ',
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              'Principais Características do Android:',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              '1. Interface de Usuário:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "◘ Interface gráfica amigável e personalizável.",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "◘ Suporte a toque com gestos, como deslizar, tocar e pinçar.",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              '2. Aplicativos:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "◘ Os aplicativos são desenvolvidos principalmente em Java e Kotlin. ",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "◘ A Google Play Store é a principal plataforma de distribuição de aplicativos para Android, com milhões de apps disponíveis. ",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "◘ Padrão em praticamente todos os computadores modernos.",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              '3. Open Source:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "◘ O Android é um projeto de código aberto, mantido pela Google sob a organização Open Handset Alliance. ",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "◘ O código-fonte está disponível para fabricantes e desenvolvedores, permitindo personalizações e adaptações. ",
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    ),
  );
}

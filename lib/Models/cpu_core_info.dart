import 'package:flutter/material.dart';

class CpuCoreInfo extends StatelessWidget {
  CpuCoreInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return core;
  }

  final Widget core = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Núcleos do processador",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'O número de núcleos de uma CPU (Unidade Central de Processamento) refere-se à quantidade de unidades de processamento independentes dentro de um único chip de CPU. \n\nCada núcleo pode processar suas próprias tarefas, permitindo que o processador execute múltiplas operações simultaneamente.',
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 20),
          const Text(
            'Principais sobre os núcleos de uma CPU:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "1. Multitarefa: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Com múltiplos núcleos, uma CPU pode realizar várias tarefas ao mesmo tempo de forma mais eficiente. Isso é especialmente útil para sistemas operacionais modernos e aplicações que requerem multitarefa.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "2. Desempenho: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Mais núcleos podem aumentar significativamente o desempenho de uma CPU, especialmente em tarefas que podem ser paralelizadas, como renderização de gráficos, edição de vídeo e execução de servidores. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "3. Hyper-Threading: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Algumas CPUs suportam uma tecnologia chamada Hyper-Threading, que permite que cada núcleo físico simule dois núcleos lógicos, aumentando ainda mais a capacidade de processamento ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "4. Aplicações e Jogos: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Muitos programas e jogos modernos são projetados para tirar proveito de múltiplos núcleos, o que pode resultar em uma experiência de usuário mais suave e rápida. ",
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

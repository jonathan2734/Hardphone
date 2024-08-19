import 'package:flutter/material.dart';

class KernelBitness extends StatelessWidget {
  KernelBitness({super.key});
  @override
  Widget build(BuildContext context) {
    return kernel;
  }

  final Widget kernel = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Arquitetura \nde Bits",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'O termo "Kernel Bitness" refere-se à arquitetura de bits de um kernel de sistema operacional, que indica quantos bits o kernel pode processar de uma vez. Existem principalmente duas arquiteturas em uso atualmente: 32 bits e 64 bits. ',
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              '32 bits:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "• Capacidade de endereçamento de memória: Até 4 GB de RAM.",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "• Limitações em termos de desempenho e capacidade de processamento devido à menor largura de dados.",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "• Menos comum em sistemas modernos, mas ainda encontrado em hardware e software mais antigos.",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              '64 bits:', // Seu texto longo aqui
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "• Capacidade de endereçamento de memória: Muito maior, teoricamente até 16 exabytes de RAM.",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "• Maior largura de dados permite um melhor desempenho, especialmente para aplicativos que exigem grandes quantidades de memória e processamento intensivo.",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "• Padrão em praticamente todos os computadores modernos.",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "A arquitetura do kernel impacta diretamente a compatibilidade de software e hardware, bem como o desempenho geral do sistema. \n\nUm sistema operacional de 64 bits pode executar tanto aplicativos de 32 bits quanto de 64 bits (embora nem todos os aplicativos de 32 bits sejam compatíveis sem ajustes), enquanto um sistema de 32 bits só pode executar aplicativos de 32 bits",
            style: TextStyle(fontSize: 16.0),
          )
        ],
      ),
    ),
  );
}

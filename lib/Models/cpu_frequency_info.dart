import 'package:flutter/material.dart';

class CpuFrequencyInfo extends StatelessWidget {
  CpuFrequencyInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return frequency;
  }

  final Widget frequency = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Frequência do processador",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            "A frequência de uma CPU (Unidade Central de Processamento) é a medida da velocidade com que o processador pode executar instruções.",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 20),
          Text(
            "É geralmente medida em Hertz (Hz), com frequências modernas sendo tipicamente expressas em Gigahertz (GHz).",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 20),
          Text(
            "1 GHz significa que a CPU pode executar um bilhão de ciclos por segundo. Cada ciclo é uma unidade básica de tempo durante a qual a CPU pode realizar operações básicas como mover dados ou realizar cálculos.",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Uma frequência mais alta significa que a CPU pode processar mais instruções por segundo, o que geralmente resulta em um desempenho mais rápido.",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "No entanto, o desempenho real de uma CPU também depende de outros fatores, como a arquitetura do processador, o número de núcleos, a eficiência do pipeline de execução, e a quantidade de memória cache disponível.",
            style: TextStyle(fontSize: 16.0),
          )
        ],
      ),
    ),
  );
}

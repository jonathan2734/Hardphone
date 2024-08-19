import 'package:flutter/material.dart';

class CpuTemperatureInfo extends StatelessWidget {
  CpuTemperatureInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return temperature;
  }

  final Widget temperature = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Temperatura do processador",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'A temperatura ideal para a CPU de um smartphone varia conforme a atividade e o design do dispositivo. ',
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Geralmente, as temperaturas seguras são as seguintes:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: const TextSpan(
              text: "Em repouso:  ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text: "A temperatura da CPU deve estar entre 30°C e 40°C.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "Uso moderado: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Durante a navegação na web ou uso de aplicativos leves, a temperatura deve estar entre 40°C e 50°C",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "Uso intenso: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Ao executar jogos ou aplicativos que exigem muita potência de processamento, a temperatura pode chegar entre 50°C e 60°C.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Temperaturas acima de 60°C podem ser preocupantes e podem levar a um desempenho reduzido ou até mesmo danos ao hardware a longo prazo. ',
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 20),
          const Text(
            'Temperaturas consistentemente acima de 70°C indicam um problema que deve ser abordado, como um possível defeito de hardware ou necessidade de melhorar o sistema de resfriamento do dispositivo. ',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    ),
  );
}

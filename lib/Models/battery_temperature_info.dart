import 'package:flutter/material.dart';

class BatteryTemperatureInfo extends StatelessWidget {
  BatteryTemperatureInfo({super.key});
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
            "Temperatura da Bateria",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'A temperatura ideal para uma bateria de smartphone está entre 20°C e 25°C. Dentro desse intervalo, a bateria opera de forma eficiente e segura.\n\nNo entanto, a maioria das baterias de smartphones é projetada para funcionar adequadamente em um intervalo de temperatura mais amplo, geralmente entre 0°C e 35°C.\n\nExpor a bateria a temperaturas extremas, tanto altas quanto baixas, pode reduzir sua vida útil e eficiência. ',
            style: TextStyle(fontSize: 16.0,),
          ),
          const SizedBox(height: 20),
          const Text(
            'Aqui estão algumas orientações:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "1. Evite temperaturas altas: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Temperaturas acima de 35°C podem causar danos permanentes à capacidade da bateria.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "2. Evite temperaturas muito baixas: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Embora não tão prejudiciais quanto as altas, temperaturas abaixo de 0°C podem temporariamente reduzir a capacidade da bateria. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "3. Carregamento em temperaturas moderadas: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "É especialmente importante manter a bateria dentro do intervalo ideal durante o carregamento para evitar superaquecimento. ",
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

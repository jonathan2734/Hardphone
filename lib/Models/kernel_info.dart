import 'package:flutter/material.dart';

class KernelInfo extends StatelessWidget {
  KernelInfo({super.key});

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
            "Arquitetura \ndo Kernel",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Um kernel é a parte central de um sistema operacional, responsável por gerenciar os recursos do computador e permitir a comunicação entre hardware e software. Ele serve como um intermediário entre as aplicações e o hardware do computador, garantindo que os programas possam operar de maneira eficiente e segura. ',
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'As principais funções do kernel incluem:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          RichText(
            text: const TextSpan(
              text: "• Gerenciamento de processos: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text: "Criação, agendamento e terminação de processos. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: const TextSpan(
              text: "• Gerenciamento de memória: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text: "Alocação e liberação de memória para processos. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: const TextSpan(
              text: "• Gerenciamento de dispositivos: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text: "Controle e comunicação com dispositivos de hardware. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: const TextSpan(
              text: "• Gerenciamento de arquivos: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text: "Controle do acesso e organização de arquivos no sistema de armazenamento. ",
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

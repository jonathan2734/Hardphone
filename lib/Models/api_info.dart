import 'package:flutter/material.dart';

class ApiInfo extends StatelessWidget {
  ApiInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return api;
  }

  final Widget api = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Nível da API",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Uma API (Interface de Programação de Aplicações) é um conjunto de ferramentas e protocolos que permitem que diferentes aplicações se comuniquem entre si. \n\nNo contexto do desenvolvimento Android, as APIs são usadas para permitir que os desenvolvedores acessem funcionalidades e serviços do sistema operacional Android, assim como serviços externos, de forma padronizada. ',
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "O nível da API refere-se a uma versão específica da API do Android que oferece um conjunto definido de funcionalidades e comportamentos. \n\nCada nível de API é numerado sequencialmente e corresponde a uma versão específica do sistema operacional Android. Por exemplo, o Android 4.0 (Ice Cream Sandwich) é o nível da API 14, enquanto o Android 11 é o nível da API 30.",
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 20),
          const Text(
            'Pontos importantes sobre o nível da API no Android:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "1. Compatibilidade: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Os desenvolvedores usam níveis de API para garantir que seu aplicativo seja compatível com versões específicas do Android. Eles podem definir um nível mínimo de API que o aplicativo exige para funcionar e um nível de API alvo para o qual o aplicativo é otimizado. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "2. Novas Funcionalidades: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Cada novo nível de API geralmente introduz novas funcionalidades, melhorias e mudanças na API do Android. Desenvolvedores podem usar essas novas funcionalidades para aprimorar seus aplicativos, desde que garantam compatibilidade com versões anteriores, se necessário. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "3. Depreciação de Funcionalidades: ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              children: [
                TextSpan(
                  text:
                      "Com o tempo, certas funcionalidades podem ser depreciadas em níveis de API mais altos. Os desenvolvedores precisam estar cientes dessas mudanças para atualizar seu código e manter a compatibilidade com as versões mais recentes do Android. ",
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

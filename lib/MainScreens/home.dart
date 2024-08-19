import 'package:flutter/material.dart';
import 'package:hardphone/Placeholders/title_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Image.asset('assets/images/Hardphone.png', height: 120,),
            const SizedBox(
              height: 15,
            ),
            const TitleText(title: 'Bem vindo ao HardPhone'),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: Text(
                'Este é um aplicativo que tem como objetivo informar sobre os componentes de seus dispositivo. Para navegar através do Hardphone, basta utilizar os icones abaixo: Inicio, Componentes, Desempenho, Configurações. Para sugestões de melhoria ao aplicativo, selecione a opçao “Fale Conosco” dentro da tela “Sobre Nós”.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }
}

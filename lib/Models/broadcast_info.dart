import 'package:flutter/material.dart';

class BroadcastInfo extends StatelessWidget {
  BroadcastInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return broadcast;
  }

  final Widget broadcast = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Endereço \nBroadcast",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            'Em uma rede de computadores, um "broadcast" refere-se à transmissão de dados de um único ponto para todos os pontos da rede. Em termos simples, é como enviar uma mensagem para todos os dispositivos conectados à rede, sem a necessidade de especificar um destinatário específico. Isso é feito usando um endereço de broadcast especial que todos os dispositivos na rede reconhecem. ',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Os endereços IPv6 são mais extensos que os endereços IPv4, usando 128 bits em comparação com os 32 bits do IPv4, o que permite um número muito maior de combinações únicas de endereços IP. ",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "O formato do endereço de broadcast depende do tipo de endereço IP utilizado. Por exemplo, se o endereço IP da sub-rede for 192.168.0.0, o endereço de broadcast será 192.168.0.255.",
            style: TextStyle(
              fontSize: 16.0,
            ),
          )
        ],
      ),
    ),
  );
}

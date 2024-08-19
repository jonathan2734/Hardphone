import 'package:flutter/material.dart';

class Ipv6Info extends StatelessWidget {
  Ipv6Info({super.key});
  @override
  Widget build(BuildContext context) {
    return ipv6;
  }

  final Widget ipv6 = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Endereço \nIPV6",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            'Um endereço IPv6 (Protocolo de Internet versão 6) é um identificador numérico único atribuído a cada dispositivo conectado a uma rede. O IPv6 foi desenvolvido para substituir o IPv4 devido ao limite de endereços disponíveis no IPv4. ',
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
            "Isso ajuda a garantir que haja endereços IP suficientes para todos os dispositivos conectados à Internet no futuro.",
            style: TextStyle(
              fontSize: 16.0,
            ),
          )
        ],
      ),
    ),
  );
}

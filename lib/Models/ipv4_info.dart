import 'package:flutter/material.dart';

class Ipv4Info extends StatelessWidget {
  Ipv4Info({super.key});
  @override
  Widget build(BuildContext context) {
    return ipv4;
  }

  final Widget ipv4 = Container(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    height: 500,
    width: 500,
    child: const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Endereço \nIPV4",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            'Um endereço IPv4 (Protocolo de Internet versão 4) é como um número único dado a cada aparelho (como seu computador, smartphone, etc.) que se conecta à internet. É como um código postal que diz para onde enviar informações na rede. ',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Ele é formado por quatro conjuntos de números separados por pontos, como 192.168.1.1. Esses números ajudam os dispositivos a se encontrarem e trocarem dados na internet ou em redes locais.",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'A função principal do endereço IPv4 é permitir que os dispositivos se comuniquem uns com os outros na rede. Ele atua como um identificador único para cada dispositivo conectado, permitindo que pacotes de dados sejam corretamente roteados de um ponto a outro da rede global ou local. ',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Além de identificar o dispositivo, o endereço IPv4 também especifica sua localização na rede, facilitando a entrega precisa de informações e serviços, como navegação na web, transferência de arquivos, e-mails, streaming de vídeos, entre outros.",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}

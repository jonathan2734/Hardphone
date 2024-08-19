import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  State<Contact> createState() {
    return _ContactState();
  }
}

class _ContactState extends State<Contact> {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informações de contato"),
      ),
      body: Center(
        child: ContactUs(        
          cardColor: Color.fromARGB(255, 21, 127, 214),
          textColor: Colors.white,
          logo: const AssetImage('images/logo.jpg'),
          email: 'jonathan2734@gmail.com',
          emailText: "Email",
          companyName: 'Jonathan Montevechio',
          companyColor: Color.fromARGB(255, 21, 127, 214),
          dividerThickness: 2,
          dividerColor: Color.fromARGB(255, 21, 127, 214),
          phoneNumber: '+55 (42) 99964-4123',
          phoneNumberText: "Telefone",
          githubUserName: 'jonathan2734',
          linkedinURL: 'https://www.linkedin.com/',
          tagLine: 'Desenvolvedor Flutter',
          taglineColor: Color.fromARGB(255, 21, 127, 214),
          twitterHandle: 'AbhishekDoshi26',
          instagram: 'jonathan.montevechio',
          facebookHandle: 'jonathan.montevechio',
          companyFontSize: 30,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:installed_apps/installed_apps.dart';

class CommonUtil {
  static void checkIfAppIsInstalled(BuildContext context, String packageName) {
    InstalledApps.isAppInstalled(packageName).then(
      (bool? value) => _showDialog(
          context,
          value ?? false
              ? "O aplicativo está instalado no dispositivo."
              : "O não aplicativo está instalado no dispositivo.."),
    );
  }

  static void checkIfSystemApp(BuildContext context, String packageName) {
    InstalledApps.isSystemApp(packageName).then(
      (bool? value) => _showDialog(
          context,
          value ?? false
              ? "O aplicativo requisitado é do sistema."
              : "O aplicativo requisitado nao é do sistema."),
    );
  }

  static void _showDialog(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(text),
          actions: <Widget>[
            TextButton(
              child: Text("Fechar"),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}
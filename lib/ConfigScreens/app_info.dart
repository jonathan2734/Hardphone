import 'package:flutter/material.dart';
//import 'package:hardphone/util/common.dart';
import 'package:installed_apps/app_info.dart';
import 'package:installed_apps/installed_apps.dart';

class AppInfoScreen extends StatelessWidget {
  final AppInfo? app;

  const AppInfoScreen({this.app});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(app == null ? "App Info" : app!.name),
      ),
      body: app == null
          ? _buildAppInfoWithPackageName(context)
          : _buildAppInfo(context, app!),
    );
  }

  Widget _buildAppInfoWithPackageName(BuildContext context) {
    return FutureBuilder<AppInfo>(
      future: InstalledApps.getAppInfo("com.google.android.gm"),
      builder: (BuildContext buildContext, AsyncSnapshot<AppInfo> snapshot) {
        return snapshot.connectionState == ConnectionState.done
            ? snapshot.hasData && snapshot.data != null
                ? _buildAppInfo(context, snapshot.data!)
                : _buildError()
            : _buildProgressIndicator();
      },
    );
  }

  Widget _buildProgressIndicator() {
    return const Center(
        child: Text("Obtendo informaçoes dos aplicativos ...."));
  }

  Widget _buildError() {
    return const Center(child: Text("Erro ao obter informações ...."));
  }

  Widget _buildAppInfo(BuildContext context, AppInfo app) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Center(
            child: Image.memory(
              app.icon!,
              width: 64,
            ),
          ),
        ),
        Center(
          child: Text(
            app.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        const SizedBox(height: 16),
        ListTile(
          title: const Center(child: Text("Nome do pacote")),
          subtitle: Center(child: Text(app.packageName)),
        ),
        ListTile(
          title: const Center(child: Text("Nome da versão")),
          subtitle: Center(child: Text(app.versionName)),
        ),
        ListTile(
          title: const Center(child: Text("Código da versão")),
          subtitle: Center(child: Text(app.versionCode.toString())),
        ),
        ListTile(
          title: const Center(child: Text("Construido com")),
          subtitle:
              Center(child: Text(app.builtWith.toString().split(".").last)),
        ),
        ListTile(
          title: const Center(child: const Text("Instalado em")),
          subtitle: Center(child: Text(app.installedTimestamp.toString())),
        ),
        /*
        Container(
          margin: EdgeInsets.symmetric(horizontal: 80),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 21, 127, 214),
            ),
            onPressed: () => InstalledApps.startApp(app.packageName),
            child: const Text(
              "Abrir aplicativo",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 80),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 21, 127, 214),
            ),
            onPressed: () => InstalledApps.openSettings(app.packageName),
            child: const Text("Abrir configurações",
                style: TextStyle(color: Colors.white)),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 80),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 21, 127, 214),
            ),
            onPressed: () =>
                CommonUtil.checkIfSystemApp(context, app.packageName),
            child: const Text("É um aplicativo do sistema ?",
                style: TextStyle(color: Colors.white)),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 80),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 21, 127, 214),
            ),
            onPressed: () =>
                CommonUtil.checkIfAppIsInstalled(context, app.packageName),
            child: const Text("O aplicativo está instalado ?",
                style: TextStyle(color: Colors.white)),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 80),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 21, 127, 214),
            ),
            onPressed: () => InstalledApps.uninstallApp(app.packageName),
            child: Text("Desinstalar aplicativo",
                style: TextStyle(color: Colors.white)),
          ),
        ),
        */
      ],
    );
  }
}

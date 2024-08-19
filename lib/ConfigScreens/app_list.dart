import 'package:flutter/material.dart';
import 'package:installed_apps/app_info.dart';
import 'package:installed_apps/installed_apps.dart';
import 'package:hardphone/ConfigScreens/app_info.dart';

class AppListScreen extends StatelessWidget {
  const AppListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aplicativos instalados")),
      body: FutureBuilder<List<AppInfo>>(
        future: InstalledApps.getInstalledApps(true, true),
        builder: (
          BuildContext buildContext,
          AsyncSnapshot<List<AppInfo>> snapshot,
        ) {
          return snapshot.connectionState == ConnectionState.done
              ? snapshot.hasData
                  ? _buildListView(snapshot.data ?? [])
                  : _buildError()
              : _buildProgressIndicator();
        },
      ),
    );
  }

  Widget _buildListView(List<AppInfo> apps) {
    return ListView.builder(
      itemCount: apps.length,
      itemBuilder: (context, index) => _buildListItem(context, apps[index]),
    );
  }

  Widget _buildListItem(BuildContext context, AppInfo app) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.memory(app.icon!),
        ),
        title: Text(app.name),
        subtitle: Text(app.getVersionInfo()),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AppInfoScreen(app: app)),
        ),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return const Center(child: Text("Buscando aplicativos instalados..."));
  }

  Widget _buildError() {
    return const Center(
      child: Text("Ocorreu um erro ao obter os aplicativos instalados"),
    );
  }
}

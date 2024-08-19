import 'package:flutter/material.dart';
import 'package:hardphone/ConfigScreens/app_list.dart';
import 'package:hardphone/util/common.dart';

class SystemApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Installed Apps Example")),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      children: [
        _buildListItem(
          context,
          "Installed Apps",
          "Get installed apps on device. With options to exclude system app, get app icon & matching package name prefix.",
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AppListScreen()),
          ),
        ),
        _buildListItem(
          context,
          "Is app installed?",
          "Check if app is installed using package name",
          () => CommonUtil.checkIfAppIsInstalled(
            context,
            "com.sharmadhiraj.installed_apps_example",
          ),
        ),
      ],
    );
  }

  Widget _buildListItem(
    BuildContext context,
    String title,
    String subtitle,
    Function() onTap,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          onTap: onTap,
        ),
      ),
    );
  }
}

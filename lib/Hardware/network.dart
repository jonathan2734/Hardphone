import 'dart:developer' as developer;
import 'dart:io';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hardphone/Models/ipv4_info.dart';
import 'package:hardphone/Models/ipv6_info.dart';
import 'package:hardphone/Placeholders/custom_dialog.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:hardphone/Placeholders/title_text.dart';

class Network extends StatefulWidget {
  const Network({super.key});

  @override
  State<Network> createState() => _NetworkState();
}

class _NetworkState extends State<Network> {
  Widget _connectionStatus = const Column();
  final NetworkInfo _networkInfo = NetworkInfo();

  @override
  void initState() {
    super.initState();
    _initNetworkInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rede"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/Wifi.png', height: 120),
              const TitleText(title: 'Rede'),
              const SizedBox(height: 16),
              _connectionStatus,
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _initNetworkInfo() async {
    String? wifiName,
        wifiBSSID,
        wifiIPv4,
        wifiIPv6,
        wifiGatewayIP,
        wifiBroadcast,
        wifiSubmask;

    try {
      if (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
        if (await Permission.locationWhenInUse.request().isGranted) {
          wifiName = await _networkInfo.getWifiName();
        } else {
          wifiName = 'Unauthorized to get Wifi Name';
        }
      } else {
        wifiName = await _networkInfo.getWifiName();
      }
    } on PlatformException catch (e) {
      developer.log('Failed to get Wifi Name', error: e);
      wifiName = 'Failed to get Wifi Name';
    }

    try {
      if (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
        // Request permissions as recommended by the plugin documentation:
        // https://github.com/fluttercommunity/plus_plugins/tree/main/packages/network_info_plus/network_info_plus
        if (await Permission.locationWhenInUse.request().isGranted) {
          wifiBSSID = await _networkInfo.getWifiBSSID();
        } else {
          wifiBSSID = 'Unauthorized to get Wifi BSSID';
        }
      } else {
        wifiName = await _networkInfo.getWifiName();
      }
    } on PlatformException catch (e) {
      developer.log('Failed to get Wifi BSSID', error: e);
      wifiBSSID = 'Failed to get Wifi BSSID';
    }

    try {
      wifiIPv4 = await _networkInfo.getWifiIP();
    } on PlatformException catch (e) {
      developer.log('Failed to get Wifi IPv4', error: e);
      wifiIPv4 = 'Failed to get Wifi IPv4';
    }

    try {
      wifiIPv6 = await _networkInfo.getWifiIPv6();
    } on PlatformException catch (e) {
      developer.log('Failed to get Wifi IPv6', error: e);
      wifiIPv6 = 'Failed to get Wifi IPv6';
    }

    try {
      wifiSubmask = await _networkInfo.getWifiSubmask();
    } on PlatformException catch (e) {
      developer.log('Failed to get Wifi submask address', error: e);
      wifiSubmask = 'Failed to get Wifi submask address';
    }

    try {
      wifiBroadcast = await _networkInfo.getWifiBroadcast();
    } on PlatformException catch (e) {
      developer.log('Failed to get Wifi broadcast', error: e);
      wifiBroadcast = 'Failed to get Wifi broadcast';
    }

    try {
      wifiGatewayIP = await _networkInfo.getWifiGatewayIP();
    } on PlatformException catch (e) {
      developer.log('Failed to get Wifi gateway address', error: e);
      wifiGatewayIP = 'Failed to get Wifi gateway address';
    }

    setState(
      () {
        _connectionStatus = Column(
          children: [
            Card(
              color: Colors.white,
              child: ListTile(
                  leading: Image.asset("assets/images/Wifi.gif", width: 80),
                  title: const Text('Nome da Rede'),
                  subtitle: Text('$wifiName')),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Wifi.gif",
                  width: 80,
                ),
                title: const Text('BSSID da Rede'),
                subtitle: Text('$wifiBSSID'),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Address.gif",
                  width: 80,
                ),
                title: const Text('Endereço IPv4'),
                subtitle: Text('$wifiIPv4'),
                trailing: Image.asset('assets/images/Info.gif', width: 30),
                onTap: () => CustomDialog().initCustomDialog(
                  context,
                  Ipv4Info(),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Address.gif",
                  width: 80,
                ),
                title: const Text('Endereço IPv6'),
                subtitle: Text('$wifiIPv6'),
                trailing: Image.asset('assets/images/Info.gif', width: 30),
                onTap: () => CustomDialog().initCustomDialog(
                  context,
                  Ipv6Info(),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Broadcast.gif",
                  width: 80,
                ),
                title: const Text('Broadcast'),
                subtitle: Text('$wifiBroadcast'),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Internet.gif",
                  width: 80,
                ),
                title: const Text('Gateway da Rede:'),
                subtitle: Text('$wifiGatewayIP'),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Router.gif",
                  width: 80,
                ),
                title: const Text('Submáscara da rede:'),
                subtitle: Text('$wifiSubmask'),
              ),
            ),
          ],
        );
      },
    );
  }
}

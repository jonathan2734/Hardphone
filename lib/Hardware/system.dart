import 'package:flutter/material.dart';
import 'package:hardphone/Models/android_info.dart';
import 'package:hardphone/Models/api_info.dart';
import 'package:hardphone/Models/kernel_bitness_info.dart';
import 'package:hardphone/Models/kernel_info.dart';
import 'package:hardphone/Placeholders/custom_dialog.dart';

import 'dart:async';

import 'package:hardphone/Placeholders/title_text.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:system_info2/system_info2.dart';

class System extends StatefulWidget {
  const System({super.key});

  @override
  State<System> createState() => _SystemState();
}

class _SystemState extends State<System> {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Map<String, dynamic> _deviceData = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    var deviceData = <String, dynamic>{};
    deviceData = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);

    setState(() {
      _deviceData = deviceData;
    });
  }

  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'systemFeatures': build.systemFeatures,
      'serialNumber': build.serialNumber,
      'isLowRamDevice': build.isLowRamDevice,
    };
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/System.png',
              height: 120,
            ),
            const TitleText(title: 'Sistema'),
            const SizedBox(height: 16),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset('assets/images/Device.gif', width: 80),
                title: const Text('Modelo do dispositivo'),
                subtitle: Text("${_deviceData['model']}"),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset('assets/images/Device.gif', width: 80),
                title: const Text('Marca do dispositivo'),
                subtitle: Text("${_deviceData['brand']}"),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  'assets/images/Manufacturer.gif',
                  width: 80,
                ),
                title: const Text('Fabricante do dispositivo'),
                subtitle: Text("${_deviceData['manufacturer']}"),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  'assets/images/Android.gif',
                  width: 80,
                ),
                title: const Text('Versão do android'),
                subtitle: Text("${_deviceData['version.release']}"),
                trailing: Image.asset('assets/images/Info.gif', width: 30),
                onTap: () => CustomDialog().initCustomDialog(
                  context,
                  AndroidInfo(),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset(
                    'assets/images/Api.gif',
                    width: 65,
                  ),
                ),
                title: const Text('Nível da API'),
                subtitle: Text("${_deviceData['version.sdkInt']}"),
                trailing: Image.asset('assets/images/Info.gif', width: 30),
                onTap: () => CustomDialog().initCustomDialog(
                  context,
                  ApiInfo(),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  'assets/images/Architecture.gif',
                  width: 80,
                ),
                title: const Text('Arquitetura do kernel'),
                subtitle: Text("${SysInfo.kernelArchitecture}"),
                trailing: Image.asset('assets/images/Info.gif', width: 30),
                onTap: () => CustomDialog().initCustomDialog(
                  context,
                  KernelInfo(),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  'assets/images/Architecture.gif',
                  width: 80,
                ),
                title: const Text('Arquitetura do kernel RAW'),
                subtitle: Text(SysInfo.rawKernelArchitecture),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Gear.gif",
                  width: 80,
                ),
                title: const Text('Kernel bitness'),
                subtitle: Text("${SysInfo.kernelBitness}"),
                trailing: Image.asset('assets/images/Info.gif', width: 30),
                onTap: () {
                  CustomDialog().initCustomDialog(
                    context,
                    KernelBitness(),
                  );
                },
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Simulation.gif",
                  width: 80,
                ),
                title: const Text('Nome do kernel'),
                subtitle: Text(SysInfo.kernelName),
              ),
            ),
            /*
            Card(
              color: Colors.white,
              child: ListTile(
                title: const Text('Nome do sistema operacional'),
                subtitle: Text(SysInfo.operatingSystemName),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                title: const Text('Versão do sistema operacional'),
                subtitle: Text(SysInfo.operatingSystemVersion),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                title: const Text('Diretorio de usuário'),
                subtitle: Text(SysInfo.userDirectory),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                title: const Text('Id de usuário'),
                subtitle: Text(SysInfo.userId),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                title: const Text('Nome de usuário'),
                subtitle: Text(SysInfo.userName),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                title: const Text('Bitness do usuário'),
                subtitle: Text("${SysInfo.userSpaceBitness}"),
              ),
            ),
            */
          ],
        ),
      ),
    );
  }
}

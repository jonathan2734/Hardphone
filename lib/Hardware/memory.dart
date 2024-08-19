import 'package:flutter/material.dart';
import 'package:hardphone/Models/disk_info.dart';
import 'package:hardphone/Models/memory_info.dart';
import 'package:hardphone/Placeholders/custom_dialog.dart';
import 'package:hardphone/Placeholders/title_text.dart';
import 'package:system_info2/system_info2.dart';
import 'package:hardphone/util/disk_initializer.dart';

class Memory extends StatefulWidget {
  const Memory({super.key});

  static const int MEGABYTE = 1024 * 1024;

  @override
  State<Memory> createState() => _MemoryState();
}

class _MemoryState extends State<Memory> {
  final space = DiskInitializer();
  final usedMemory = (SysInfo.getTotalPhysicalMemory() ~/ (1024 * 1024)) -
      (SysInfo.getFreeVirtualMemory() ~/ (1000 * 1000));

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Memória"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/Memory.png', height: 120),
            const TitleText(title: 'Memoria'),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Memory.gif",
                  width: 80,
                ),
                title: const Text("Memória RAM total "),
                subtitle: Text(
                    "${SysInfo.getTotalPhysicalMemory() ~/ Memory.MEGABYTE} MB"),
                trailing: Image.asset('assets/images/Info.gif', width: 30),
                onTap: () => CustomDialog().initCustomDialog(
                  context,
                  MemoryInfo(),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Memory.gif",
                  width: 80,
                ),
                title: const Text("Memória RAM Livre "),
                subtitle: Text(
                    "${SysInfo.getFreeVirtualMemory() ~/ (1000 * 1000)} MB"),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Memory.gif",
                  width: 80,
                ),
                title: const Text("Memória RAM utilizada "),
                subtitle: Text("${usedMemory} MB"),
              ),
            ),
            FutureBuilder<String>(
              future: space.totalDiskSpace,
              builder: (context, snap) {
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/Disk.gif",
                      width: 80,
                    ),
                    title: const Text("Espaço em disco total "),
                    subtitle: Text("${(snap.data)} GB"),
                    trailing: Image.asset('assets/images/Info.gif', width: 30),
                    onTap: () => CustomDialog().initCustomDialog(
                      context,
                      DiskInfo(),
                    ),
                  ),
                );
              },
            ),
            FutureBuilder<String>(
              future: space.freeDiskSpace,
              builder: (context, snap) {
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/Disk.gif",
                      width: 80,
                    ),
                    title: const Text("Espaço em disco livre "),
                    subtitle: Text("${(snap.data)} GB"),
                  ),
                );
              },
            ),
            FutureBuilder<String>(
              future: space.usedDiskSpace,
              builder: (context, snap) {
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/Disk.gif",
                      width: 80,
                    ),
                    title: const Text("Espaço em disco utilizado "),
                    subtitle: Text("${(snap.data)} GB"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

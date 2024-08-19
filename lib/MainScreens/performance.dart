import 'package:flutter/material.dart';
import 'package:hardphone/Placeholders/title_text.dart';
import 'package:hardphone/util/disk_initializer.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:system_info2/system_info2.dart';
import 'package:thermal/thermal.dart';
import 'package:better_cpu_reader/cpu_reader.dart';
import 'package:better_cpu_reader/cpuinfo.dart';

class Performance extends StatefulWidget {
  const Performance({super.key});

  @override
  State<Performance> createState() {
    return _PerformanceState();
  }
}

class _PerformanceState extends State<Performance> {
  final disk = DiskInitializer();
  final totalMemory = SysInfo.getTotalPhysicalMemory() ~/ (1024 * 1024);
  final freeMemory = (SysInfo.getFreeVirtualMemory() ~/ (1000 * 1000));

  @override
  void initState() {
    super.initState();
    disk.usedDiskSpace;
  }

  @override
  Widget build(context) {
    final usedMemory = totalMemory - freeMemory;
    final usedMemoryPercent = (usedMemory * 100) / totalMemory;
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/Performance.png',
            width: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          const TitleText(title: 'Desempenho\nGeral'),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<double>(
                future: disk.usedDiskSpacePercentage,
                builder: (context, snap) {
                  return CircularPercentIndicator(
                    radius: 85,
                    progressColor: Colors.blue,
                    percent: snap.data!,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/TransparentDisk.gif",
                          width: 70,
                        ),
                        Text(
                          "${(snap.data! * 100).toStringAsFixed(2)} %",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text("Armazenamento \nutilizado",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                width: 25,
              ),
              CircularPercentIndicator(
                radius: 85,
                progressColor: Colors.blue,
                percent: usedMemoryPercent / 100,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/TransparentMemory.gif",
                      width: 50,
                    ),
                    Text("${(usedMemoryPercent.toStringAsFixed(2))} %"),
                    const Text(
                      "Memória RAM \n Utilizada",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<double>(
                stream: Thermal().onBatteryTemperatureChanged,
                builder: (context, snapshot) {
                  return CircularPercentIndicator(
                    radius: 85,
                    progressColor: Colors.blue,
                    percent: snapshot.data! / 60,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Temperature.gif",
                          width: 50,
                        ),
                        Text("${snapshot.data} °C"),
                        const Text(
                          "Temperatura \n da bateria ",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                width: 25,
              ),
              StreamBuilder<CpuInfo>(
                stream: CpuReader.asStream(
                  const Duration(microseconds: 250),
                ),
                builder: (_, AsyncSnapshot<CpuInfo> info) {
                  return CircularPercentIndicator(
                    radius: 85,
                    progressColor: Colors.blue,
                    percent: (info.data!.cpuTemperature / 100) + 0.1,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Temperature.gif",
                          width: 50,
                        ),
                        Text("${info.data!.cpuTemperature} "),
                        const Text(
                          "Temperatura \n da CPU",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hardphone/Models/cpu_core_info.dart';
import 'package:hardphone/Models/cpu_frequency_info.dart';
import 'package:hardphone/Models/cpu_temperature_info.dart';
import 'package:hardphone/Placeholders/custom_dialog.dart';
import 'package:hardphone/Placeholders/title_text.dart';
import 'package:better_cpu_reader/cpu_reader.dart';
import 'package:better_cpu_reader/cpuinfo.dart';

class Cpu extends StatefulWidget {
  const Cpu({super.key});

  @override
  State<Cpu> createState() {
    return _CpuState();
  }
}

class _CpuState extends State<Cpu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Processamento'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/Processor.png', height: 120),
            const TitleText(title: 'CPU'),
            FutureBuilder<CpuInfo>(
              future: CpuReader.cpuInfo,
              builder: (context, AsyncSnapshot<CpuInfo> snapshot) => snapshot
                      .hasData
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Image.asset(
                              "assets/images/Processor.gif",
                              width: 80,
                            ),
                            title: const Text(
                              "Número de núcleos",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('${snapshot.data!.numberOfCores}'),
                            trailing: Image.asset('assets/images/Info.gif',
                                width: 30),
                            onTap: () {
                              CustomDialog().initCustomDialog(
                                context,
                                CpuCoreInfo(),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  : const Text('No data!'),
            ),
            StreamBuilder<CpuInfo>(
              stream: CpuReader.asStream(
                const Duration(milliseconds: 500),
              ),
              builder: (_, AsyncSnapshot<CpuInfo> snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: buildFreqList2(context, snapshot),
                  );
                }
                return const Text('No data!');
              },
            ),
            StreamBuilder<CpuInfo>(
              stream: CpuReader.asStream(
                const Duration(microseconds: 250),
              ),
              builder: (_, AsyncSnapshot<CpuInfo> info) {
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/Temperature.gif",
                      width: 80,
                    ),
                    title: const Text(
                      'Temperatura: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('${info.data!.cpuTemperature}'),
                    trailing: Image.asset('assets/images/Info.gif', width: 30),
                    onTap: () {
                      CustomDialog().initCustomDialog(
                        context,
                        CpuTemperatureInfo(),
                      );
                    },
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

List<Card> buildFreqList2(
    BuildContext context, AsyncSnapshot<CpuInfo> snapshot) {
  return snapshot.data!.currentFrequencies.entries
      .map(
        (entry) => Card(
          color: Colors.white,
          child: ListTile(
            leading: Image.asset(
              "assets/images/Frequency.gif",
              width: 80,
            ),
            title: Text(
              'Frequência Núcleo ${entry.key + 1}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('${entry.value}'),
            trailing: Image.asset('assets/images/Info.gif', width: 30),
            onTap: () {
              CustomDialog().initCustomDialog(
                context,
                CpuFrequencyInfo(),
              );
            },
          ),
        ),
      )
      .toList();
}

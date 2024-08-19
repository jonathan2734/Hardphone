import 'package:flutter/material.dart';

import 'package:battery_info/battery_info_plugin.dart';
import 'package:battery_info/enums/charging_status.dart';
import 'package:battery_info/model/android_battery_info.dart';

import 'package:hardphone/Models/battery_temperature_info.dart';

import 'package:hardphone/Placeholders/custom_dialog.dart';

import 'package:hardphone/Placeholders/title_text.dart';
import 'package:hardphone/Models/tech_info.dart';
import 'package:thermal/thermal.dart';

class BatteryScreen extends StatelessWidget {
  const BatteryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String charging = 'Desconhecido';
    String health = 'Desconhecido';
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bateria"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/Battery.png',
                height: 120,
              ),
              const TitleText(title: 'Bateria'),
              const SizedBox(height: 16),
              FutureBuilder<AndroidBatteryInfo?>(
                future: BatteryInfoPlugin().androidBatteryInfo,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.health == "health_good") {
                      health = 'Boa';
                    }
                    if (snapshot.data!.health == "dead") {
                      health = 'Morta';
                    }
                    if (snapshot.data!.health == "over_heat") {
                      health = 'Superaquecida';
                    }
                    if (snapshot.data!.health == "over_voltage") {
                      health = 'Sobretensão';
                    }
                    if (snapshot.data!.health == "cold") {
                      health = 'Fria';
                    }
                    if (snapshot.data!.health == "unspecified_failure") {
                      health = 'Falha não especificada';
                    }
                    if (snapshot.data!.health == "unknown") {
                      health = 'Desconhecida';
                    }
                    return Card(
                      color: Colors.white,
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/Heart.gif",
                          width: 80,
                        ),
                        title: const Text("Saúde da Bateria:",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text("$health"),
                      ),
                    );
                  }
                  return const CircularProgressIndicator();
                },
              ),
              StreamBuilder<double>(
                stream: Thermal().onBatteryTemperatureChanged,
                builder: (context, snapshot) {
                  return Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/Temperature.gif",
                        width: 80,
                      ),
                      title: const Text(
                        "Temperatura da bateria:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("${snapshot.data}°C"),
                      trailing:
                          Image.asset('assets/images/Info.gif', width: 30),
                      selected: true,
                      onTap: () {
                        CustomDialog().initCustomDialog(
                            context, BatteryTemperatureInfo());
                      },
                    ),
                  );
                },
              ),
              StreamBuilder<AndroidBatteryInfo?>(
                stream: BatteryInfoPlugin().androidBatteryInfoStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.chargingStatus == ChargingStatus.Full) {
                      charging = "Carregando";
                    }
                    if (snapshot.data!.chargingStatus ==
                        ChargingStatus.Discharging) {
                      charging = "Descarregando";
                    }
                    if (snapshot.data!.chargingStatus == ChargingStatus.Full) {
                      charging = "Completo";
                    }
                    if (snapshot.data!.chargingStatus ==
                        ChargingStatus.Unknown) {
                      charging = "Desconhecido";
                    }

                    return Column(
                      children: [
                        Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Image.asset("assets/images/Voltage.gif",
                                width: 80),
                            title: const Text(
                              "Voltagem:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("${(snapshot.data!.voltage)} mV"),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          child: ListTile(
                              leading: Image.asset(
                                "assets/images/Charge.gif",
                                width: 80,
                              ),
                              title: const Text(
                                "Status do Carregamento:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("$charging")),
                        ),
                        Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Image.asset(
                              "assets/images/Battery2.gif",
                              width: 80,
                            ),
                            title: const Text(
                              "Nível de Bateria:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "${(snapshot.data!.batteryLevel)} %",
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Image.asset("assets/images/Battery2.gif",
                                width: 80),
                            title: const Text(
                              "Energia restante:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "${-(snapshot.data!.remainingEnergy! * 1.0E-9)} Watt-hours,",
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Image.asset("assets/images/Battery.gif",
                                width: 80),
                            title: const Text(
                              "Capacidade:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "${(snapshot.data!.batteryCapacity! / 1000)} mAh",
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Image.asset("assets/images/Battery.gif",
                                width: 80),
                            title: const Text(
                              "A Bateria esta presente:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "${snapshot.data!.present! ? "Sim" : "Não"} ",
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Image.asset(
                              "assets/images/Tech.gif",
                              width: 80,
                            ),
                            title: const Text(
                              "Tecnologia:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "${(snapshot.data!.technology)}",
                            ),
                            onTap: () {
                              CustomDialog().initCustomDialog(
                                context,
                                TechInfo(
                                    componentInfo: snapshot.data!.technology),
                              );
                            },
                            selected: true,
                            trailing: Image.asset('assets/images/Info.gif',
                                width: 30),
                          ),
                        ),
                        _getChargeTime(snapshot.data!),
                      ],
                    );
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getChargeTime(AndroidBatteryInfo data) {
    if (data.chargingStatus == ChargingStatus.Charging) {
      return data.chargeTimeRemaining == -1
          ? const Text("Calculando tempo de carga restante")
          : Text(
              "Tempo de carga restante (Aproximado): ${(data.chargeTimeRemaining! / 1000 / 60).truncate()} minutos");
    }
    return const Text(
      "A Bateria nao está completa ou não está conectada a uma fonte de energia",
      textAlign: TextAlign.center,
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hardphone/Models/barometer.dart';
import 'package:hardphone/Models/gyroscope.dart';
import 'package:hardphone/Models/magnetometer.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:hardphone/Placeholders/custom_dialog.dart';
import 'package:hardphone/Placeholders/title_text.dart';
import 'package:hardphone/Models/accelerometer.dart';

class Sensor extends StatefulWidget {
  const Sensor({super.key});
  @override
  State<Sensor> createState() {
    return _SensorState();
  }
}

class _SensorState extends State<Sensor> {
  static const Duration _ignoreDuration = Duration(milliseconds: 20);

  AccelerometerEvent? _accelerometerEvent;
  GyroscopeEvent? _gyroscopeEvent;
  MagnetometerEvent? _magnetometerEvent;
  BarometerEvent? _barometerEvent;

  DateTime? _accelerometerUpdateTime;
  DateTime? _gyroscopeUpdateTime;
  DateTime? _magnetometerUpdateTime;
  DateTime? _barometerUpdateTime;

  int? _accelerometerLastInterval;
  int? _gyroscopeLastInterval;
  int? _magnetometerLastInterval;
  int? _barometerLastInterval;
  final _streamSubscriptions = <StreamSubscription<dynamic>>[];

  Duration sensorInterval = SensorInterval.normalInterval;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensores'),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/Sensor.png', height: 120),
          const TitleText(title: 'Sensores'),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Image.asset(
                "assets/images/Accelerometer.gif",
                width: 80,
              ),
              title: const Text(
                "Acelerometro",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Table(
                children: [
                  const TableRow(
                    children: [
                      Text('X'),
                      Text('Y'),
                      Text('Z'),
                      SizedBox.shrink(),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(_accelerometerEvent?.x.toStringAsFixed(1) ?? '?'),
                      Text(_accelerometerEvent?.y.toStringAsFixed(1) ?? '?'),
                      Text(_accelerometerEvent?.z.toStringAsFixed(1) ?? '?'),
                      const SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
              trailing: Image.asset('assets/images/Info.gif', width: 30),
              onTap: () {
                CustomDialog().initCustomDialog(
                  context,
                  Accelerometer(),
                );
              },
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Image.asset(
                "assets/images/Gyroscope.gif",
                width: 80,
              ),
              title: const Text(
                "Giroscopio",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Table(children: [
                const TableRow(
                  children: [
                    Text('X'),
                    Text('Y'),
                    Text('Z'),
                    SizedBox.shrink(),
                  ],
                ),
                TableRow(
                  children: [
                    Text(_gyroscopeEvent?.x.toStringAsFixed(1) ?? '?'),
                    Text(_gyroscopeEvent?.y.toStringAsFixed(1) ?? '?'),
                    Text(_gyroscopeEvent?.z.toStringAsFixed(1) ?? '?'),
                    const SizedBox.shrink(),
                  ],
                ),
              ]),
              trailing: Image.asset('assets/images/Info.gif', width: 30),
              onTap: () {
                CustomDialog().initCustomDialog(
                  context,
                  Gyroscope(),
                );
              },
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Image.asset(
                "assets/images/Magnetometer.gif",
                width: 80,
              ),
              title: const Text(
                "Magnetometro",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Table(
                children: [
                  const TableRow(
                    children: [
                      Text('X'),
                      Text('Y'),
                      Text('Z'),
                      SizedBox.shrink(),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(_magnetometerEvent?.x.toStringAsFixed(1) ?? '?'),
                      Text(_magnetometerEvent?.y.toStringAsFixed(1) ?? '?'),
                      Text(_magnetometerEvent?.z.toStringAsFixed(1) ?? '?'),
                      const SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
              trailing: Image.asset('assets/images/Info.gif', width: 30),
              onTap: () {
                CustomDialog().initCustomDialog(
                  context,
                  Magnetometer(),
                );
              },
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Image.asset(
                "assets/images/Barometer.gif",
                width: 80,
              ),
              title: const Text(
                "Barometro",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Table(
                children: [
                  const TableRow(
                    children: [
                      Text('Pressão'),
                      SizedBox.shrink(),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                          '${_barometerEvent?.pressure.toStringAsFixed(1) ?? '?'} hPa'),
                      const SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
              trailing: Image.asset('assets/images/Info.gif', width: 30),
              onTap: () {
                CustomDialog().initCustomDialog(
                  context,
                  Barometer(),
                );
              },
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Intervalo de atualização:'),
              SegmentedButton(
                segments: const [
                  ButtonSegment(
                    value: SensorInterval.gameInterval,
                    label: Text('20ms'),
                  ),
                  ButtonSegment(
                    value: SensorInterval.uiInterval,
                    label: Text('60ms'),
                  ),
                  ButtonSegment(
                    value: SensorInterval.normalInterval,
                    label: Text('200ms'),
                  ),
                  ButtonSegment(
                    value: Duration(milliseconds: 500),
                    label: Text('500ms'),
                  ),
                  ButtonSegment(
                    value: Duration(seconds: 1),
                    label: Text('1s'),
                  ),
                ],
                selected: {sensorInterval},
                showSelectedIcon: false,
                onSelectionChanged: (value) {
                  setState(() {
                    sensorInterval = value.first;
                    userAccelerometerEventStream(
                        samplingPeriod: sensorInterval);
                    accelerometerEventStream(samplingPeriod: sensorInterval);
                    gyroscopeEventStream(samplingPeriod: sensorInterval);
                    magnetometerEventStream(samplingPeriod: sensorInterval);
                    barometerEventStream(samplingPeriod: sensorInterval);
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    for (final subscription in _streamSubscriptions) {
      subscription.cancel();
    }
  }

  @override
  void initState() {
    super.initState();
    _streamSubscriptions.add(
      accelerometerEventStream(samplingPeriod: sensorInterval).listen(
        (AccelerometerEvent event) {
          final now = event.timestamp;
          setState(() {
            _accelerometerEvent = event;
            if (_accelerometerUpdateTime != null) {
              final interval = now.difference(_accelerometerUpdateTime!);
              if (interval > _ignoreDuration) {
                _accelerometerLastInterval = interval.inMilliseconds;
              }
            }
          });
          _accelerometerUpdateTime = now;
        },
        onError: (e) {
          showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  title: Text("Sensor nao encontrado"),
                  content: Text(
                      "Não foi possivel obter os dados do Acelerometro. Talvez seu dispositivo o sensor ou ele esteja danificado"),
                );
              });
        },
        cancelOnError: true,
      ),
    );
    _streamSubscriptions.add(
      gyroscopeEventStream(samplingPeriod: sensorInterval).listen(
        (GyroscopeEvent event) {
          final now = event.timestamp;
          setState(() {
            _gyroscopeEvent = event;
            if (_gyroscopeUpdateTime != null) {
              final interval = now.difference(_gyroscopeUpdateTime!);
              if (interval > _ignoreDuration) {
                _gyroscopeLastInterval = interval.inMilliseconds;
              }
            }
          });
          _gyroscopeUpdateTime = now;
        },
        onError: (e) {
          showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  title: Text("Sensor nao encontrado"),
                  content: Text(
                      "Não foi possivel obter os dados do Giroscopio. Talvez seu dispositivo o sensor ou ele esteja danificado"),
                );
              });
        },
        cancelOnError: true,
      ),
    );
    _streamSubscriptions.add(
      magnetometerEventStream(samplingPeriod: sensorInterval).listen(
        (MagnetometerEvent event) {
          final now = event.timestamp;
          setState(() {
            _magnetometerEvent = event;
            if (_magnetometerUpdateTime != null) {
              final interval = now.difference(_magnetometerUpdateTime!);
              if (interval > _ignoreDuration) {
                _magnetometerLastInterval = interval.inMilliseconds;
              }
            }
          });
          _magnetometerUpdateTime = now;
        },
        onError: (e) {
          showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  title: Text("Sensor nao encontrado"),
                  content: Text(
                      "Não foi possivel obter os dados do Magnetometro. Talvez seu dispositivo o sensor ou ele esteja danificado"),
                );
              });
        },
        cancelOnError: true,
      ),
    );
    _streamSubscriptions.add(
      barometerEventStream(samplingPeriod: sensorInterval).listen(
        (BarometerEvent event) {
          final now = event.timestamp;
          setState(() {
            _barometerEvent = event;
            if (_barometerUpdateTime != null) {
              final interval = now.difference(_barometerUpdateTime!);
              if (interval > _ignoreDuration) {
                _barometerLastInterval = interval.inMilliseconds;
              }
            }
          });
          _barometerUpdateTime = now;
        },
        onError: (e) {
          showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  title: Text("Sensor nao encontrado"),
                  content: Text(
                      "Não foi possivel obter os dados do Barometro. Talvez seu dispositivo o sensor ou ele esteja danificado"),
                );
              });
        },
        cancelOnError: true,
      ),
    );
  }
}

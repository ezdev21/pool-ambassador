import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:pool_driver/widgets/trip_alert_dialog.dart';
import 'package:pool_driver/widgets/app_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool  online = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const AppDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
          Row(
            children: [
            FlutterSwitch(
              activeColor: Colors.blue,
              inactiveColor: Colors.yellow,
              activeText: 'online',
              inactiveText: 'offline',
              width: 130.0,
              height: 50.0,
              valueFontSize: 20.0,
              toggleSize: 45.0,
              value: online,
              borderRadius: 30.0,
              padding: 8.0,
              showOnOff: true,
              onToggle: (val) {
                setState(() {
                  online = val;
                });
              },
          )
            ],
          )
        ]),
        body: Center(
          child: MaterialButton(
            child: const Text("Start Trip"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const TripAlertDialog();
                  });
            },
          ),
        ));
  }
}

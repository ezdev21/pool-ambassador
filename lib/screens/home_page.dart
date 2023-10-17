import 'package:flutter/material.dart';
import 'package:pool_driver/widgets/trip_alert_dialog.dart';
import 'package:pool_driver/widgets/app_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const AppDrawer(),
        appBar: AppBar(
          backgroundColor: const Color(0xFF176AD7),
          title: const Text('hi'),
        ),
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

import 'package:flutter/material.dart';
import 'package:pool_driver/provider/trip_provider.dart';
import 'package:pool_driver/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>TripProvider()),
      ],
      child: const MyApp()
      )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: HomePage(),
    );
  }
}


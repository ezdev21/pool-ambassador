import 'package:flutter/material.dart';
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
      drawer:AppDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF176AD7),
        title: Text('hi'),
      ),
      body: Center(
        child: Text('pool'),
      ),
     
    );
  }
}

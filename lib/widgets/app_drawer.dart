import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pool_driver/screens/home_page.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        const DrawerHeader(
                decoration:BoxDecoration(
                color: Color(0xFF176AD7)
                ),
                child: Row(
                  children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                  ),
                  SizedBox(width: 15,),
                  Text("Hello User",style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),),
                  SizedBox(height: 10,),
                  ],
                ),
            ), 
            ListTile(
              title: const Text('Your Trips'),
              leading: const Icon(Icons.car_rental),
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()))
              },
            ),
            ListTile(
              title: const Text('Wallet'),
              leading: const Icon(Icons.wallet),
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()))
              },
            ),
            ListTile(
              title: const Text('Earnings'),
              leading: const Icon(Icons.money),
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()))
              },
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()))
              },
            ),
            ListTile(
              title: const Text('Support'),
              leading: const Icon(Icons.support),
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()))
              },
            ),
            ListTile(
              title: const Text('Privacy URL'),
              leading: const Icon(Icons.link),
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()))
              },
            ),
            const Expanded(
              child: Align(
                alignment: FractionalOffset.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Ride with Pool Passanger',style: TextStyle(fontSize: 15),)
                ),
              ),
            )  
        ],
       ),
    );
  }
}
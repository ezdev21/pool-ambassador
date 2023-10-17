import 'package:flutter/material.dart';
import 'package:pool_driver/provider/trip_provider.dart';
import 'package:provider/provider.dart';

class TripAlertDialog extends StatefulWidget {
  const TripAlertDialog({super.key});

  @override
  State<TripAlertDialog> createState() => _TripAlertDialogState();
}

class _TripAlertDialogState extends State<TripAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0))),
      scrollable: true,
      content: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: '9XXXXXXXX',
                  icon: Icon(Icons.phone),
                ),
                controller: Provider.of<TripProvider>(context,
                        listen: false)
                    .phoneNumber,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Pickup',
                  icon: Icon(Icons.trip_origin),
                ),
                // controller: Provider.of<TripProvider>(context,
                //         listen: false)
                //     .pickupLocation,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Destination',
                  icon: Icon(Icons.trip_origin),
                ),
                // controller: Provider.of<TripProvider>(context,
                //         listen: false)
                //     .dropLocation,
              ),
            ],
          ),
        ),
      ),
      actions: [
        MaterialButton(
            padding: const EdgeInsets.all(15),
            color: const Color(0xFF176AD7),
            textColor: Colors.white,
            minWidth: double.infinity,
            child: const Text("SUBMIT TRIP"),
            onPressed: () {
              //Provider.of<TripProvider>(context, listen: false)
                  //.startTrip();
            })
      ],
    );
  }
}
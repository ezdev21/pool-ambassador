import 'package:flutter/material.dart';
import 'package:pool_driver/services/dio.dart';

class TripProvider extends ChangeNotifier {
  final phoneNumber = TextEditingController();
  final pickupLocation = TextEditingController();
  final dropLocation = TextEditingController();

  void startTrip() {
    dio().post('/', data: {
      'phone_number': phoneNumber.text,
      'pickup_location': pickupLocation.text,
      'drop_location': dropLocation.text
    }).then((value) => {});
  }
}

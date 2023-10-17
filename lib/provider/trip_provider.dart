import 'package:flutter/material.dart';
import 'package:pool_driver/services/dio.dart';

class TripProvider extends ChangeNotifier {
  final phoneNumber = TextEditingController();
  final pickupLocation = TextEditingController();
  final dropLocation = TextEditingController();

  void startTrip() {
    dio().post('/', data: {
      'phone_number': phoneNumber,
      'pickup_location': pickupLocation,
      'drop_location': dropLocation
    }).then((value) => {});
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nourishnetdonor/features/donate/models/donation_Model.dart';

class DonationRepository extends GetxController {
  static DonationRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;
  CreateDonation(DonationModel donation) async {
    try {
      await _db
          .collection('Donations')
          .add(donation.toJson())
          .whenComplete(() => Get.snackbar(
                'success',
                'your donation has been successfully added',
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.green.withOpacity(0.1),
                colorText: Colors.green,
              ));
    } catch (error) {
      Get.snackbar(
        "Error",
        "Something went wrong. Please try again.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.withOpacity(0.1),
        colorText: Colors.red,
      );
      print(error.toString());
      // Return a value to fulfill the requirement of the catchError callback
      return null;
    }
  }
}

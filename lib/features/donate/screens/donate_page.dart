import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nourishnetdonor/features/donate/models/donation_Model.dart';
import 'package:nourishnetdonor/repository/Donation_Repository/donation_repository.dart';
import 'package:nourishnetdonor/widgets/bottom-navbar.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  int currentPage = 1;
  final _formKey = GlobalKey<FormState>();
  final DonationRepository _donationRepository = DonationRepository();
  late String _amountOfFood;
  late String _timings;
  late String _location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 198, 168, 105),
        title: Text(
          'NourishNet',
          style: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10), // Reduce the height
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Food Servings',
                      prefixIcon: Icon(Icons.food_bank),
                    ),
                    style: TextStyle(fontSize: 16),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the amount of food';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _amountOfFood = value!;
                    },
                  ),
                  SizedBox(height: 10), // Reduce the height
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Timings',
                      prefixIcon: Icon(Icons.access_time),
                    ),
                    style: TextStyle(fontSize: 16),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the timings';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _timings = value!;
                    },
                  ),
                  SizedBox(height: 10), // Reduce the height
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Location',
                      prefixIcon: Icon(Icons.location_on),
                    ),
                    style: TextStyle(fontSize: 16),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the location';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _location = value!;
                    },
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          DonationModel donation = DonationModel(
                            foodServings: _amountOfFood,
                            timings: _timings,
                            location: _location,
                          );
                          _donationRepository.CreateDonation(donation);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        'Donate',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    );
  }
}

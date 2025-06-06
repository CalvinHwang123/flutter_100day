import 'package:flutter/material.dart';
import 'package:flutter_100day/pages/food_delivery_start_page.dart';
import 'package:flutter_100day/pages/inspiration_page.dart';

import 'pages/trip_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'Roboto', // for inspration_page.dart
        fontFamily: 'Nunito', // for trip_page.dart
      ),
      // home: const InspirationPage(),
      // home: const TripPage(),
      home: const FoodDeliveryStartPage(),
    );
  }
}

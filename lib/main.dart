import 'package:flutter/material.dart';
import 'package:rent_power_bank/screens/pay_screen.dart';
import 'package:rent_power_bank/screens/payment_screen.dart';
import 'package:rent_power_bank/screens/success_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recharge.city',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const PaymentScreen(),
    );
  }
}
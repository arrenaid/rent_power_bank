import 'package:flutter/material.dart';
import 'package:rent_power_bank/widgets/gradient_button.dart';

import '../widgets/bottom_text.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 27),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Image.asset(
                  'assets/images/recharge_city.png',
                  height: 25,
                  width: 163,
                ),
              ),
              Spacer(),

              ///text
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Stay Powered Anytime',
                  style: TextStyle(
                    color: Color(0xFF0B0B0B),
                    fontFamily: 'Inter',
                    fontSize: 24,
                    letterSpacing: 1,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'To return your power bank and keep enjoying our service for free, simply download the app!',
                  style: TextStyle(
                    color: Color(0xFF0B0B0B),
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Spacer(),

              ///bottom
              GradientButton(title: 'Download App', height: 48),
              SizedBox(height: 34),
              BottomText(),
              SizedBox( height: 23),
            ],
          ),
        ),
      ),
    );
  }
}

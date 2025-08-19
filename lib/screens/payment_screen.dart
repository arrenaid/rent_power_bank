import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_power_bank/screens/pay_screen.dart';

import '../widgets/bottom_text.dart';
import '../widgets/default_bottom_sheet.dart';
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
          SizedBox( height: 27),
          Align(alignment: AlignmentGeometry.centerLeft,
              child: Image.asset('assets/images/recharge_city.png', height: 25, width: 163)),
          SizedBox( height: 48),


          Text('Rent a Charger', style: TextStyle(
              color: Color(0xFF0B0B0B),
            fontFamily: 'Inter',
            fontSize: 26
          ),),

          SizedBox( height: 10),
          RichText(
              text: TextSpan(
                  text: '\$4.99 ',
                  style: TextStyle(
                    color: Color(0xFF0B0B0B),
                    fontSize: 38,
                    fontFamily: 'Inter',

                  ),
                children: [TextSpan(text: '\$15.99',
                  style: TextStyle(
                fontSize: 26,color: Color(0xFFdadada),
                    decoration: TextDecoration.lineThrough,
                fontFamily: 'Inter',

              ),
                )]
              )),

          SizedBox( height: 10),
          Divider(
            height: 0.5,
            color: Color(0xFFa0a0a0),
          ),

          SizedBox( height: 48),
          Text('Select Payment Method', style: TextStyle(
            color: Color(0xFF0B0B0B),
            fontSize: 20,
            fontFamily: 'Inter',

          ),),


          ///PAY
          SizedBox( height: 18),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: EdgeInsets.symmetric( vertical: 15),
              ),
            onPressed: () => showDefaultBottomSheet(context: context, child: PayScreen() ),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset('assets/images/apple_pay.png', height: 18,)
          ],),),

          SizedBox( height: 18),
          Divider(
            height: 0.5,
            color: Color(0xFFa0a0a0),
          ),

          SizedBox( height: 18),

          TextButton(
            style: TextButton.styleFrom(foregroundColor: Color(0xFF606060),
              padding: EdgeInsets.symmetric(horizontal: 8),),
            onPressed: () {  },
            child: Row(
              children: [
                Image.asset('assets/images/credit_card.png', height: 21),
                SizedBox(width: 17),
                Text('Debit or credit card', style: TextStyle(
                  color: Color(0xFF0B0B0B),
                  fontSize: 16,
                  fontFamily: 'Inter',

                ),),
                Spacer(),
                Icon(CupertinoIcons.forward, color: Colors.black, size: 21)
              ],
            ),
          ),

          SizedBox( height: 18),
          Divider(
            height: 0.5,
            color: Color(0xFFa0a0a0),
          ),

          SizedBox( height: 18),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 50),
            child: Text('If the battery is not returned within 14 days or is lost, a \$99 fee will apply.',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Color(0xFF0B0B0B),
              fontSize: 12,
              fontFamily: 'Inter',

            ),),
          ),


          Spacer(),
          BottomText(),
          SizedBox( height: 27),

                      ],
                    ),),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  const SignButton({
    super.key,
    this.execute,
    required this.title,
    required this.logo,
  });

  final GestureTapCallback? execute;
  final String title;
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 13),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          //backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric( vertical: 12.5),
          side: BorderSide(width: 1.0, color: Color(0xFFE6E8E7)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: execute,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: TextStyle(
              color: Color(0xFF232323),
              fontFamily: 'Inter',
              fontSize: 16,
            ),),
            SizedBox(width: 8),
            Image.asset(logo, height: 24)
          ],),),
    );
  }
}
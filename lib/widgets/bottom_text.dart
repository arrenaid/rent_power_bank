import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Nothing happened? ',
          style: TextStyle(
            color: Color(0xFF606060),
            fontSize: 10,
            letterSpacing: 2,
            fontFamily: 'Inter',
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Color(0xFF606060),
            padding: EdgeInsets.zero,
            textStyle: TextStyle(
              letterSpacing: 2,
              fontSize: 10,
              fontFamily: 'Inter',
             // decoration: TextDecoration.underline,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xFF606060), width: 0.5),
              ),
            ),
            child: Text('Contact support'),
          ),
        ),
      ],
    );
  }
}

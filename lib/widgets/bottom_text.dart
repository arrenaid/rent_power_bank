import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Nothing happened? ', style: TextStyle(
            color: Color(0xFF606060),
            fontSize: 10,
            fontFamily: 'Inter'

        ),),
        TextButton(onPressed: (){},
          style: TextButton.styleFrom(foregroundColor: Color(0xFF606060),
            padding: EdgeInsets.zero,

            textStyle: TextStyle(

              fontSize: 10,
              fontFamily: 'Inter', decoration:  TextDecoration.underline,
            ),
          ), child: Text('Contact support' ),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';

class IconAndTitleRow extends StatelessWidget {
  const IconAndTitleRow({
    super.key,
    this.img,
    required this.title,
    this.value,
  });

  final String? img;
  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 24,
        child: Row(
          children: [
            ///img
            if(img != null)...[
              Image.asset(img!,height: 24, width: 24,),
              SizedBox(width: 10),
            ],
        
        
            ///title///value
            Text(title +
                (value ?? ''),
              style: TextStyle(
                  color: Color(0xFF0B0B0C),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
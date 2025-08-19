import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f7),
      body: SafeArea(
          child:Column(
            children: [

              ///header
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/apple_pay.png', height: 28, width: 60,color: Colors.black,),
                    IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.close, color:  Color(0xFF7f7f85), ),
                      style: IconButton.styleFrom(backgroundColor:Color(0xFFe3e3e9) ),)
                  ],
                )),


              ///apple credit card
              SizedBox(height: 13),
        Padding(
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Container(
            height: 95,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset('assets/images/color_card.png', height: 25, width: 40,
                      ),
                    ),
                          SizedBox(width: 10,),

                    SizedBox(
                      width: 207,
                      child: Wrap(
                        children: [
                          Text('Apple Card', style: TextStyle(
                            color: Colors.black,//Color(0xFF0B0B0B),
                            fontSize: 15,
                            fontFamily: 'Inter',
                          ),),
                          Text('10880 Malibu Point Malibu Cal...',
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                            color: Color(0xFF7d7d81),
                            fontSize: 13,
                            fontFamily: 'Inter',
                          ),),
                          Text('•••• 1234', style: TextStyle(
                            color: Color(0xFF7d7d81),
                            fontSize: 13,
                            fontFamily: 'Inter',
                          ),),
                        ],
                      ),
                    ),

                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.forward), color:  Color(0xFF8a8a8e),),

                  ],
                ),
              ),
          ),
        ),


              ///block 2
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child:  Container(
                    padding: EdgeInsets.all(16),
                    child: Text('\$4.99', style: TextStyle(
                      color: Colors.black,//Color(0xFF0B0B0B),
                      fontSize: 13,
                      fontFamily: 'Inter',
                    ),),
                  ),
                ),),

              ///block 3
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child:  Container(
                    padding: EdgeInsets.all(16),
                    child: Text('Account: username@icloud.com', style: TextStyle(
                      color: Color(0xFF8a8a8e),
                      fontSize: 13,
                      fontFamily: 'Inter',
                    ),),
                  ),
                ),),


              SizedBox(height: 22),
              Divider( color: Color(0xFFb0b0b6), height: 0.5),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('Pay recharge', style: TextStyle(
                          color: Color(0xFF8a8a8e),
                          fontSize: 13,
                          fontFamily: 'Inter',
                        ),),
                        Text('\$4.99', style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'Inter',
                        ),),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.forward), color:  Color(0xFF8a8a8e),),
                  ],
                ),
              ),
              Divider( color: Color(0xFFb0b0b6), height: 0.5),


        Expanded(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/side_button.png', height: 32,
                ),
                SizedBox(height: 6),
                Text('Confirm with Side Button', style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Inter',
                ),),
                SizedBox(height: 33),
              ],
            )
          ),
        ),

            ],
          ),

      ),

    );
  }
}

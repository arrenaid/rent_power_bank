import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rent_power_bank/screens/payment_successful_screen.dart';
import '../widgets/gradient_button.dart';

class SmsScreen extends StatefulWidget {
  const SmsScreen({super.key});

  @override
  State<SmsScreen> createState() => _SmsScreenState();
}

class _SmsScreenState extends State<SmsScreen> {
  late TextEditingController _controllerCode1;
  late TextEditingController _controllerCode2;
  late TextEditingController _controllerCode3;
  late TextEditingController _controllerCode4;
  late TextEditingController _controllerCode5;
  late TextEditingController _controllerCode6;

  late bool _enable;
  late String _code;

  @override
  void initState() {
    _enable = true;
    _code = '';
    _controllerCode1 = TextEditingController();
    _controllerCode2 = TextEditingController();
    _controllerCode3 = TextEditingController();
    _controllerCode4 = TextEditingController();
    _controllerCode5 = TextEditingController();
    _controllerCode6 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controllerCode1.dispose();
    _controllerCode2.dispose();
    _controllerCode3.dispose();
    _controllerCode4.dispose();
    _controllerCode5.dispose();
    _controllerCode6.dispose();
    super.dispose();
  }
  _setEnable({bool value = false}){
    setState(() {
      _enable = value;
    });
  }

  bool isEnabled() {
    return _controllerCode1.text.isNotEmpty &&
        _controllerCode2.text.isNotEmpty &&
        _controllerCode3.text.isNotEmpty &&
        _controllerCode4.text.isNotEmpty &&
        _controllerCode5.text.isNotEmpty &&
        _controllerCode6.text.isNotEmpty;
  }

  void checkNextFocus(String text, BuildContext context) {
    if (text.isNotEmpty) {
      FocusManager.instance.primaryFocus?.nextFocus();
    }
    if(isEnabled()) {
      _setEnable(value: false);
      FocusManager.instance.primaryFocus?.unfocus();
      setState(() {
        _code = _controllerCode1.text+
        _controllerCode2.text+
        _controllerCode3.text+
        _controllerCode4.text+
        _controllerCode5.text+
        _controllerCode6.text;
      });

    }else if(!_enable){
      _setEnable(value: true);
    }
  }

  void startFocus(){
    while(FocusManager.instance.primaryFocus?.previousFocus() ?? false);
  }

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
              Spacer(flex: 3),// SizedBox(height: 164),

              ///code row
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CodeInputItem(
                      controller: _controllerCode1,
                      //maxLength:  6,
                      onChanged: (text) {
                        if (text.length > 1) {
                          _controllerCode1.text = text[1];
                        }
                        checkNextFocus(text, context);
                      },
                    ),

                    CodeInputItem(
                      controller: _controllerCode2,
                      onChanged: (text) {startFocus();
                        if (text.length > 1) _controllerCode2.text = text[1];
                        checkNextFocus(text, context);
                      },
                    ),
                    CodeInputItem(
                      controller: _controllerCode3,
                      onChanged: (text) {startFocus();
                        if (text.length > 1) _controllerCode3.text = text[1];
                        checkNextFocus(text, context);
                      },
                    ),

                    CodeInputItem(
                      controller: _controllerCode4,
                      onChanged: (text) {startFocus();
                        if (text.length > 1) _controllerCode4.text = text[1];
                        checkNextFocus(text, context);
                      },
                    ),

                    CodeInputItem(
                      controller: _controllerCode5,
                      onChanged: (text) {startFocus();
                        if (text.length > 1) _controllerCode5.text = text[1];
                        checkNextFocus(text, context);
                      },
                    ),

                    CodeInputItem(
                      controller: _controllerCode6,
                      onChanged: (text) {startFocus();
                        if (text.length > 1) _controllerCode6.text = text[1];
                        checkNextFocus(text, context);
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 33),
              Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 46),
                child: Text(
                  'We just sent a verification code to +1 812555123 - ${ _code.isNotEmpty  ? _code:''}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0B0B0B),
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                ),
              ),

              Spacer(flex: 5),
              GradientButton(execute: () =>
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const PaymentSuccessfulScreen())),
                  title: 'Continue', enabled: _enable),
              SizedBox(height: 37),



            ],
          ),
        ),
      ),
    );
  }
}

class CodeInputItem extends StatelessWidget {
  const CodeInputItem({
    super.key,
    required this.controller,
    this.onChanged,
    this.maxLength = 1,
  });

  final TextEditingController controller;
  final Function(String)? onChanged;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextField(
            controller: controller,
            //maxLength: maxLength,
            onChanged: onChanged,
            //isDense: true,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF0B0B0B),
              fontSize: 44,
              fontFamily: 'Inter',
            ),
            decoration: InputDecoration(
              hintText: '',
              border: const UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Color(0xFF8BEB23),
              borderRadius: BorderRadius.circular(5),
            ),
          ),


        ],
      ),
    );
  }
}

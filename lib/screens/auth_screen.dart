import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_power_bank/screens/sms_screen.dart';

import '../widgets/gradient_button.dart';
import '../widgets/sign_button.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

MaskedInputFormatter phoneFormatter() {
  return MaskedInputFormatter('000 000 00 00');//0000000000
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late TextEditingController _controllerPhone;
  late bool _enable;

  @override
  void initState() {
    _controllerPhone = TextEditingController(text: "");
    _enable = false;
    super.initState();
  }

  @override
  void dispose() {
    _controllerPhone.dispose();
    super.dispose();
  }

  _setEnable({bool value = false}){
    setState(() {
      _enable = value;
    });
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
              Spacer(),//SizedBox(height: 127),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: Text(
                  'Enter your phone number',
                  style: TextStyle(
                    color: Color(0xFF0B0B0B),
                    fontFamily: 'Inter',
                    fontSize: 22,
                    letterSpacing: 1,
                  ),
                ),
              ),
              SizedBox(height: 14),

              ///Enter your phone numberEnter your phone number
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Color(0xFFd0d0d0), width: 1))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LeadingIcon(),
                      SizedBox(width: 12),
                      Align(
                        alignment: AlignmentGeometry.center,
                        child: Text(
                          '+ 1',
                          style: TextStyle(
                            color: Color(0xFF0B0B0B),
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Expanded(
                        child: TextField(
                          // enabled: enabled,
                          // focusNode: focusNode,
                          controller: _controllerPhone,
                          // onTap: onTap,
                          // maxLength: maxLength,
                          // maxLines: maxLines,
                          onChanged: (text) {
                            if (text.length == phoneFormatter().mask.length) {
                             _setEnable(value: true);
                              FocusManager.instance.primaryFocus?.unfocus();
                            }
                            else if(_enable){
                              _setEnable();
                            }
                            if (text.length < 2 /*&& text.isNotEmpty*/ ) {
                              //_controllerPhone.text = '+1 ';
                            }
                            // context
                            //     .read<PhoneAuthBloc>()
                            //     .add(ChangeButtonEnabledEvent(text));
                          },
                          // textInputAction: textInputAction,
                          // readOnly: readOnly,
                          //textAlign: TextAlign.start,
                          keyboardType: TextInputType.phone,
                          inputFormatters: [phoneFormatter()],
                          style: const TextStyle(
                            color: Color(0xFF0B0B0B),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                          ),
                          cursorColor: Color(0xFF86E71F),

                          decoration: DefaultTextFieldDecoration(
                            hintText: 'Phone number',//"+7 (900) 000-00-00",
                            isDense: null,
                            contentPadding: EdgeInsets.symmetric(horizontal: 24),
                            suffixIcon: null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ///or
              SizedBox(height: 14),
              Align(
                alignment: AlignmentGeometry.center,
                child: Text(
                  'or',
                  style: TextStyle(
                    color: Color(0xFF606060),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 14),

              ///google
              SignButton(
                execute: () {},
                title: 'Sign in with Google',
                logo: 'assets/images/logo_google.png',
              ),
              SizedBox(height: 14),

              ///apple
              SignButton(
                execute: () {},
                title: 'Sign in with Apple',
                logo: 'assets/images/logo_apple.png',
              ),
              Spacer(),

              ///gradientButton
              GradientButton(execute: () =>
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SmsScreen())),
                  title: 'Continue', enabled: _enable),
              SizedBox(height: 37),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultTextFieldDecoration extends InputDecoration {
  const DefaultTextFieldDecoration({
    hintText,
    suffixIcon,
    labelText,
    isDense = false,
    contentPadding,
  }) : super(
         filled: true,
         fillColor: Colors.transparent,
         contentPadding: const EdgeInsets.only(bottom: 9),
         isDense: isDense,
         hintText: hintText,
         labelText: labelText,
         labelStyle: const TextStyle(
           color: Color(0xFFA2A2A2),
           fontSize: 16,
           fontFamily: 'Lato',
           fontWeight: FontWeight.w400,
         ),
         floatingLabelBehavior: FloatingLabelBehavior.never,
         counterText: "",
         hintStyle: const TextStyle(
           color: Colors.blueAccent,
           fontSize: 16,
           fontFamily: 'Inter',
           fontWeight: FontWeight.w300,
           letterSpacing: 1,
         ),
         border: const UnderlineInputBorder(
           borderSide: BorderSide.none, //<-- SEE HERE
         ),
         // focusedBorder: const UnderlineInputBorder(
         //   //borderRadius: BorderRadius.all(Radius.circular(8)),
         //   borderSide: BorderSide(width: 2, color:  Color(0xFFd0d0d0)), //<-- SEE HERE
         // ),
         // disabledBorder: const UnderlineInputBorder(
         //   borderSide: BorderSide(color: Color(0xFFd0d0d0)),
         // ),
         // enabledBorder: const UnderlineInputBorder(
         //   borderSide: BorderSide(color: Color(0xFFd0d0d0)),
         // ),
         suffixIcon: suffixIcon,
         // icon: const LeadingIcon(),
       );
}

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/flag_usa.png',
        height: 14,
        width: 20,
      ),
    );
  }
}

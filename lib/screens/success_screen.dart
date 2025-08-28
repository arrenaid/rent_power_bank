import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_power_bank/widgets/gradient_button.dart';
import '../models/user.dart';
import '../repositories/rent_power_repository.dart';
import '../widgets/icon_and_title_row.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late User? _user;
    late String? _token;
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
              SizedBox(height: 34),

              ///text
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Charger Ejected!',
                  style: TextStyle(
                    color: Color(0xFF0B0B0B),
                    fontSize: 26,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              SizedBox(height: 34),

              ///
              IconAndTitleRow(
                img: 'assets/images/list_item.png',
                title: 'Order ID: ',
                value: '#95730630547',
              ),
              SizedBox(height: 18),
              IconAndTitleRow(
                img: 'assets/images/info_circle.png',
                title: 'Rental information',
              ),
              SizedBox(height: 10),
              IconAndTitleRow(
                title: 'Power bank ID: ',
                value: 'RECHRL3H31100248',
              ),
              SizedBox(height: 10),
              IconAndTitleRow(
                title: 'Started at: ',
                value: '02/11/2024 01:13:55',
              ),
              SizedBox(height: 10),
              IconAndTitleRow(
                title: 'Rental location: ',
                value: 'TEST LOCATION',
              ),
              SizedBox(height: 10),
              IconAndTitleRow(title: 'Venue name: ', value: 'TEST LOCATION'),

              ///todo remove test swagger
              Divider(),
              GradientButton(
                title: 'gen Account',
                execute: () async {
                  _user = await RentPowerRepository.generationAccount();
                  print('SUCCESS >>> ${_user?.authorizationToken ?? '>>FAIL1<<'}');
                },
              ),
              SizedBox(height: 10),
              GradientButton(
                title: 'gen Braintree token',
                execute: () async {
                  _user?.braintreeCustomerId = await RentPowerRepository.generateBrainTreeToken(
                    _user!.authorizationToken,
                  );
                  print('SUCCESS2 >>> ${_user?.braintreeCustomerId ?? '>>FAIL2<<'}');
                },
              ),
              SizedBox(height: 10),
              GradientButton(
                title: 'get default payment methods *',
                execute: () async {
                   var res = await RentPowerRepository.getDefaultPaymentMethods(
                    /*_account?.access ?? '000'*/
                  );
                  print('SUCCESS2.1 >>> ${res ?? '>>FAIL2.1<<'}');
                },
              ),
              SizedBox(height: 10),

              GradientButton(
                title: 'get default payment methods',
                execute: () async {
                  var res = await RentPowerRepository.postAddPaymentMethod(_user!);
                  print('SUCCESS3 >>> ${ res ?? '>>FAIL3<<'}');
                },
              ),
              SizedBox(height: 10),

              GradientButton(
                title: 'Create Subscription',
                execute: () async {
                  var res = await RentPowerRepository.postCreateSubscription(_user!);
                  print('SUCCESS3 >>> ${ res ?? '>>FAIL3<<'}');
                },
              ),
              SizedBox(height: 10),

              GradientButton(
                title: 'Rent Powerbank',
                execute: () async {
                  var res = await RentPowerRepository.postRentPowerbank(_user!);
                  print('SUCCESS3 >>> ${ res ?? '>>FAIL3<<'}');
                },
              ),
              SizedBox(height: 10),

              ///end
            ],
          ),
        ),
      ),
    );
  }
}

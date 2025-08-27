import 'package:rent_power_bank/models/user_entity.dart';

class AccountModel{
  final UserEntity user;//"rechargeUserEntity"
  final String access;
  final String refresh;

  AccountModel({required this.user, required this.access, required this.refresh});
}
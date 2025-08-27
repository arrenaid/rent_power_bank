import 'package:json_annotation/json_annotation.dart';
import 'package:rent_power_bank/models/user_dto.dart';

part 'account_dto.g.dart';

@JsonSerializable()
class AccountDTO {
  AccountDTO({this.user, this.access, this.refresh});

  factory AccountDTO.fromJson(Map<String, dynamic> json) =>
      _$AccountDTOFromJson(json);

  @JsonKey(name: 'rechargeUserEntity')
  final UserDTO? user;
  @JsonKey(name: 'accessJwt')
  final String? access;
  @JsonKey(name: 'refreshJwt')
  final String? refresh;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountDTO _$AccountDTOFromJson(Map<String, dynamic> json) => AccountDTO(
  user: json['rechargeUserEntity'] == null
      ? null
      : UserDTO.fromJson(json['rechargeUserEntity'] as Map<String, dynamic>),
  access: json['accessJwt'] as String?,
  refresh: json['refreshJwt'] as String?,
);

Map<String, dynamic> _$AccountDTOToJson(AccountDTO instance) =>
    <String, dynamic>{
      'rechargeUserEntity': instance.user,
      'accessJwt': instance.access,
      'refreshJwt': instance.refresh,
    };

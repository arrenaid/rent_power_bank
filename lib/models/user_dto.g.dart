// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) => UserDTO(
  id: json['id'] as String,
  phone: json['phone'] as String?,
  authType: json['authType'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  email: json['email'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  braintreeCustomerId: json['braintreeCustomerId'] as String?,
  blocked: json['blocked'] as bool?,
);

Map<String, dynamic> _$UserDTOToJson(UserDTO instance) => <String, dynamic>{
  'id': instance.id,
  'phone': instance.phone,
  'authType': instance.authType,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'braintreeCustomerId': instance.braintreeCustomerId,
  'blocked': instance.blocked,
};

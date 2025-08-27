import 'package:json_annotation/json_annotation.dart';
part 'user_dto.g.dart';

@JsonSerializable()
class UserDTO{
  final String id; // ": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  final String? phone; // ": "string",
  final String? authType; // ": "PHONE_NUMBER",
  final String? firstName; // ": "string",
  final String? lastName; // ": "string",
  final String? email; // ": "string",
  final String? createdAt; // ": "2025-08-26T20:10:15.093Z",
  final String? updatedAt; // ": "2025-08-26T20:10:15.093Z",
  final String? braintreeCustomerId; // ": "string",
  final bool? blocked;

  UserDTO({required this.id, this.phone, this.authType, this.firstName, this.lastName,
    this.email, this.createdAt, this.updatedAt, this.braintreeCustomerId,
    this.blocked});

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

}
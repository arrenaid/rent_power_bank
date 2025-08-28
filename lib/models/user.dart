import 'package:flutter/material.dart';

class User {
  final String id; // ": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  final String phone; // ": "string",
  final String authType; // ": "PHONE_NUMBER",
  final String firstName; // ": "string",
  final String lastName; // ": "string",
  final String email; // ": "string",
  final String createdAt; // ": "2025-08-26T20:10:15.093Z",
  final String updatedAt; // ": "2025-08-26T20:10:15.093Z",
  late String braintreeCustomerId; // ": "string",
  final bool blocked; // ": true
  late String authorizationToken;
  late String refresh;
  late String paymentToken;

  User({
    required this.id,
    required this.phone,
    required this.authType,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
    required this.braintreeCustomerId,
    required this.blocked,
  });

  User.Empty({
     this.id  = '',
     this.phone = '',
     this.authType = '',
     this.firstName = '',
     this.lastName = '',
     this.email = '',
     this.createdAt = '',
     this.updatedAt = '',
     this.braintreeCustomerId = '',
     this.blocked = false,
  });
}

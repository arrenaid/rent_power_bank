import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:rent_power_bank/models/account_dto.dart';
import 'package:rent_power_bank/models/user_account_dto_to_domain.dart';
import 'package:rent_power_bank/repositories/rent_power_query.dart';

import '../models/user.dart';

class RentPowerRepository {
  static final Dio _dio = Dio()
    ..interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true));

  static void _changeHeaders(String token) {
    _dio.options.headers['accept'] = '*/*';
    _dio.options.headers['Authorization'] = token;
    _dio.options.headers['Content-Type'] = 'application/json';
  }

  static Future<User?> generationAccount() async {
    try {
      const String url =
          '${RentPowerQuery.baseUrl}${RentPowerQuery.endPointGenerateAccount}';
      Response response = await _dio.get(url);
      // debugPrint(response.toString());

      /// dto
      final AccountDTO dto = AccountDTO.fromJson(
        response.data as Map<String, dynamic>,
      );

      ///dto.toDomain
      final User model = dto.toDomain();
      return model;
    } on DioException catch (_) {
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  static Future<dynamic> generateBrainTreeToken(String access) async {
    try {
      const String url =
          '${RentPowerQuery.baseUrl}${RentPowerQuery.endPointGenerateBraneTreeToken}';
      _changeHeaders(access);
      Response response = await _dio.get(url);
      debugPrint(response.toString());

      return response.data as String;
    } on DioException catch (_) {
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  ///https://goldfish-app-3lf7u.ondigitalocean.app/api/v1/payments/get-default-payment-method
  static Future<dynamic> getDefaultPaymentMethods(/*String access*/) async {
    try {
      const String url =
          '${RentPowerQuery.baseUrl}${RentPowerQuery.endPointGetDefPayMethod}';
      // _dio.options.headers['accept'] = '*/*';
      // _dio.options.headers['Authorization'] = access;
      Response response = await _dio.get(url);
      debugPrint(response.toString());
    } on DioException catch (e) {
      print(e);
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  static Future<dynamic> postAddPaymentMethod(User user) async {
    try {
      const String url =
          '${RentPowerQuery.baseUrl}${RentPowerQuery.endPointAddPaymentMethod}';
      _changeHeaders(user.authorizationToken);
      Response response = await _dio.post(
        url,
        data: {
          RentPowerQuery.dataAddPaymentMethod1: user.braintreeCustomerId,
          RentPowerQuery.dataAddPaymentMethod2: 'test',
          RentPowerQuery.dataAddPaymentMethod3: 'RENT',
        },
      );
      debugPrint(response.toString());
    } on DioException catch (e) {
      print(e);
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  static Future<dynamic> postRentPowerbank(User user) async {
    try {
      const String url =
          '${RentPowerQuery.baseUrl}${RentPowerQuery.endPointRentPowerbank}';
      _changeHeaders(user.authorizationToken);
      Response response = await _dio.post(
        url,
        data: {
          "cabinetId": "RECH082203000350",
          "connectionKey": "string"
        },
      );
      debugPrint(response.toString());
    } on DioException catch (e) {
      print(e);
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
  static Future<dynamic> postCreateSubscription(User user) async {
    try {
      const String url =
          '${RentPowerQuery.baseUrl}${RentPowerQuery.endPointCreateSubscription}';
      _changeHeaders(user.authorizationToken);
      Response response = await _dio.post(
        url,
        queryParameters: {
          'disableWelcomeDiscount': false,
          'welcomeDiscount': 10,
        },
        data: {
          "paymentToken": user.paymentToken,
          "thePlanId": "tss2",
        },
      );
      debugPrint(response.toString());
    } on DioException catch (e) {
      print(e);
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}

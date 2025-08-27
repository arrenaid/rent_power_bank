import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:rent_power_bank/models/account_dto.dart';
import 'package:rent_power_bank/models/account_dto_to_domain.dart';
import 'package:rent_power_bank/models/account_model.dart';
import 'package:rent_power_bank/repositories/rent_power_query.dart';

class RentPowerRepository{
  static final Dio _dio = Dio()..interceptors.add(PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
  ));

  static Future<AccountModel?>  generationAccount() async{
    try {
      const String url = '${RentPowerQuery.baseUrl}${RentPowerQuery.endPointGenerateAccount}';
      Response  response = await _dio.get(url);
      // debugPrint(response.toString());

      /// dto
      final AccountDTO dto = AccountDTO.fromJson(response.data as Map<String,dynamic>);
      ///dto.toDomain
      final AccountModel model = dto.toDomain();
      return model;
    }on DioException catch(_){
      return null;
    }catch(e){
      debugPrint(e.toString());
      return null;
    }
  }

  static Future<dynamic> generateBrainTreeToken(String access) async {
    try{
      const String url = '${RentPowerQuery.baseUrl}${RentPowerQuery.endPointGenerateBraneTreeToken}';
      _dio.options.headers['accept'] = '*/*';
      _dio.options.headers['Authorization'] = access;
      Response  response = await _dio.get(url );
      debugPrint(response.toString());

      return response.data as String;

    }on DioException catch(_){
      return null;
    }catch(e){
      debugPrint(e.toString());
      return null;
    }
  }
}
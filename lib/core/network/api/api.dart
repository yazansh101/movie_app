import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'api_request.dart';
part 'api_response.dart';

abstract class Api {
  Future<ApiResponse> post(ApiRequest request);
  Future<ApiResponse> get(ApiRequest request);
}

class ApiImpl implements Api {
  final Dio dio = Dio();

  @override
  Future<ApiResponse> get(ApiRequest request) async {
    final response = await dio.get(request.url,
        queryParameters: request.params,
        options: Options(
          headers: request.headers,
        ));
    final ApiResponse apiResponse = ApiResponse.fromResponse(response);
    return apiResponse;
  }

  @override
  Future<ApiResponse> post(ApiRequest request) async {
    final response = await dio.post(request.url,
        queryParameters: request.params,
        data: request.body,
        options: Options(
          receiveDataWhenStatusError: true,
          validateStatus: (statue){
            return true;
          },
          headers: request.headers,
        ),
    );
    final ApiResponse apiResponse = ApiResponse.fromResponse(response);
    return apiResponse;
  }
}

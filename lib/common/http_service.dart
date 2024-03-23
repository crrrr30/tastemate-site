import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_site/constants.dart';

class HttpService {
  static final dio = Dio(BaseOptions(validateStatus: (status) => true));

  static Future<({bool connectionStatus, String? url})> getDownloadURL(
      String code) async {
    try {
      final response = await dio.post(
        API_BASE_URL + GET_DOWNLOAD_URL,
        data: {'code': code},
      );
      if (response.statusCode == 200) {
        if (response.data['data']['valid_code']) {
          return (
            connectionStatus: true,
            url: response.data['data']['url'] as String
          );
        } else {
          return (connectionStatus: true, url: null);
        }
      } else {
        return (connectionStatus: false, url: null);
      }
    } on DioException catch (e) {
      debugPrint(e.toString());
    }
    return (connectionStatus: false, url: null);
  }
}

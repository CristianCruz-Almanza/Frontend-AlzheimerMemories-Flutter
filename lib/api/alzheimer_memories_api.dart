import 'package:dio/dio.dart';
import 'package:frontent_alzheimermemories_flutter/services/local_storage.dart';

class AlzheimerMemoriesApi {
  static final Dio _dio = Dio();
  static void configureDio() {
    _dio.options.baseUrl = 'http://localhost:3000/api';
    _dio.options.headers = {
      'Authorization': LocalStorage.prefs.getString('token') ?? ''
    };
  }

  static Future httpGet(String path) async {
    try {
      final resp = await _dio.get(path);
      return resp.data;
    } catch (e) {
      print(e);
      throw ('Error en el get');
    }
  }

  static Future post(String path, Map<String, dynamic> data) async {
    try {
      final resp = await _dio.post(path, data: data);
      return resp.data;
    } on DioError catch (error) {
      print('error');
    }
  }
}

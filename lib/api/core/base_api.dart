
import 'package:dio/dio.dart';

class BaseApi {
  Dio? dio;

  BaseApi() {
    dio = Dio();
  }

  Future post(url,
      {queryParameters, data, Map<String, dynamic>? headers}) async {
    try {
      headers ??= {};
      Options options = Options(
        headers: headers,
      );
      Response response = await dio!.post(url,
          queryParameters: queryParameters, data: data, options: options);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        return e.response;
      } else {
        return null;
      }
    }
  }

  Future patch(url, {data, Map<String, dynamic>? headers}) async {
    try {
      headers ??= {};
      Options options = Options(
        headers: headers,
      );
      Response response = await dio!.patch(url, data: data, options: options);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        return e.response;
      } else {
        return null;
      }
    }
  }

  Future put(url,
      {queryParameters, data, Map<String, dynamic>? headers}) async {
    try {
      Options options = Options(headers: headers);
      Response response = await dio!.put(url,
          data: data, queryParameters: queryParameters, options: options);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
      } else {}
    }
  }

  Future delete(url, {data, Map<String, dynamic>? headers}) async {
    try {
      Options options = Options(headers: headers);
      Response response = await dio!.delete(url, data: data, options: options);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
      } else {}
    }
  }

  Future get(url, {queryParameters, Map<String, dynamic>? headers}) async {
    try {
      Options options = Options(headers: headers);
      Response response = await dio!
          .get(url, queryParameters: queryParameters, options: options);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        return e.response;
      } else {
        return null;
      }
    }
  }
}

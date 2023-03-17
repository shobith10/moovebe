import 'package:dio/dio.dart';
import 'package:move_bus/api/core/base_api.dart';
import 'package:move_bus/src/auth/models/auth_model.dart';

import '../core/config.dart';

class Authapi extends BaseApi {
  Authapi() {
    BaseOptions options = BaseOptions(
      baseUrl: Config.baseUrl,
      headers: {},
    );
    dio = Dio(options);
  }

  Future<dynamic> login(
      {required String username, required String password}) async {
    Response response = await post('LoginApi',
        data: FormData.fromMap({
          'username': username,
          'password': password,
        }));
    if (response.statusCode == 200) {
      return AuthResponse.fromJson(response.data);
    }
  }
}

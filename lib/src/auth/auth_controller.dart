import 'package:flutter/material.dart';
import 'package:move_bus/api/moovbe_api/login_api.dart';
import 'package:move_bus/src/auth/models/auth_model.dart';
import 'package:move_bus/src/home/view/home_screen.dart';

class AuthController extends ChangeNotifier {
  TextEditingController username = TextEditingController(text: 'admin_user');
  TextEditingController password = TextEditingController(text: '123admin789');

  bool? _isLoading;
  bool? get isLoading => _isLoading;

  set isLoading(bool? isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  String? _accesToken;
  String? get accesToken => _accesToken;

  set accesToken(String? accesToken) {
    _accesToken = accesToken;
    notifyListeners();
  }

  Future<void> login(BuildContext context) async {
    try {
      isLoading = true;
      final response = await Authapi().login(
          username: username.text.trim(), password: password.text.trim());
      print(response);
      if ((response as AuthResponse).access != null) {
        accesToken = response.access;
        Navigator.pushNamedAndRemoveUntil(
            context, HomePage.routName, (route) => false);
      }

      isLoading = false;
    } catch (e) {
      isLoading = false;
    }
  }
}

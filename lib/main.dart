import 'package:flutter/material.dart';
import 'package:move_bus/src/app.dart';
import 'package:move_bus/src/auth/auth_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => AuthController())],
    child: const MyApp(),
  ));
}

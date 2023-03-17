import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:move_bus/src/auth/view/login_view.dart';
import 'package:move_bus/src/components/styles/colors.dart';
import 'package:move_bus/src/drivers/view/drivers_view.dart';
import 'package:move_bus/src/get_started_view.dart';
import 'package:move_bus/src/home/view/home_screen.dart';
import 'package:move_bus/src/layout/view/seatlayout_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'moovbe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.light(
            primary: primaryColor,
          ),
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontFamily: "Axiforma",
            ),
          ),
          primaryColor: primaryColor,
          scaffoldBackgroundColor: const Color(0xFFFF9F9F9)),
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) {
              switch (routeSettings.name) {
                case GetStarted.routeName:
                  return const GetStarted();
                case LoginScreen.routeName:
                  return const LoginScreen();
                case HomePage.routName:
                  return const HomePage();
                case LayoutView.routeName:
                  return const LayoutView();
                case DriversView.routName:
                  return const DriversView();
             default:

                  return const GetStarted();
              }
            });
      },
    );
  }
}

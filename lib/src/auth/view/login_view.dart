import 'package:flutter/material.dart';
import 'package:move_bus/src/components/buttons/main_button.dart';
import 'package:move_bus/src/components/spacing/spacing.dart';

import 'package:move_bus/src/components/styles/colors.dart';
import 'package:move_bus/src/components/textfields/auth_textfield.dart';
import 'package:move_bus/src/home/view/home_screen.dart';
import 'package:provider/provider.dart';

import '../auth_controller.dart';

class ArgumentClass {
  String? welcome;
  ArgumentClass({this.welcome});
}

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  LoginScreen({super.key, this.usernanel});

  String? usernanel;
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AuthController>();
    final args = ModalRoute.of(context)!.settings.arguments as ArgumentClass;
    return Scaffold(
      backgroundColor: whileclr,
      body: controller.isLoading ?? false
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                SizedBox(
                  height: 266,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: black2b,
                        child: Image.asset(
                          'assets/images/Polygon.png',
                          alignment: Alignment.centerRight,
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              args.welcome ?? 'welcome',
                              style: TextStyle(
                                  fontSize: 41,
                                  fontWeight: FontWeight.w700,
                                  color: whileclr),
                            ),
                            HSpace(17),
                            Text('Manage your Bus and Drivers',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: whileclr))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                HSpace(42),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      AuthTextField(
                          controller: controller.username,
                          hintText: 'Enter username'),
                      HSpace(20),
                      AuthTextField(
                          controller: controller.password,
                          hintText: 'Enter password')
                    ],
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    //Navigator.pushNamed(context, HomePage.routName);
                    controller.login(context);
                  },
                  child: MainButton(
                    lable: 'Login',
                    buttonColor: primaryColor,
                    textColor: whileclr,
                  ),
                )
              ],
            ),
    );
  }
}

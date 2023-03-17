import 'package:flutter/material.dart';
import 'package:move_bus/src/auth/view/login_view.dart';

import 'package:move_bus/src/components/assets_images.dart';
import 'package:move_bus/src/components/buttons/main_button.dart';
import 'package:move_bus/src/components/styles/colors.dart';

class GetStarted extends StatelessWidget {
  static const routeName = '/';
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(ImagesAssets().logo)),
          const SizedBox(
            height: 300,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  child: MainButton()))
        ],
      ),
    );
  }
}

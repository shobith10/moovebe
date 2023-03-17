import 'package:flutter/material.dart';

import 'package:move_bus/src/components/assets_images.dart';
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
            child: Container(
              height: 58,
              width: MediaQuery.of(context).size.width - 60,
              //padding: EdgeInsets.symmetric(vertical: 14,),
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: const Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

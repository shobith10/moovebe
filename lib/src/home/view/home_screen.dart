import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:move_bus/src/components/assets_images.dart';
import 'package:move_bus/src/components/buttons/main_button.dart';
import 'package:move_bus/src/components/cards/main_card.dart';
import 'package:move_bus/src/components/spacing/spacing.dart';
import 'package:move_bus/src/components/styles/colors.dart';
import 'package:move_bus/src/home/home_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const routName = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<HomeController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black2b,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Image.asset(
            ImagesAssets().logo,
            height: 35,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 19, right: 15, left: 15),
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MainCard(
                    cardColor: primaryColor,
                    subTitle: 'Manage your bus',
                    title: 'Bus',
                    assestimg: ImagesAssets().bus),
                WSpace(10),
                MainCard(
                    cardColor: black2b,
                    subTitle: 'Manage your driver',
                    title: 'Driver',
                    assestimg: ImagesAssets().driver)
              ],
            ),
          ),
          HSpace(10),
          Text(
            '${controller.busList.length} Bus Found',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: controller.busList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: whileclr,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Color(0xFFC2C2C2).withOpacity(0.3)),
                      boxShadow: [
                        BoxShadow(color: Color(0xFFC2C2C2), blurRadius: 3)
                      ]),
                  height: 73,
                  child: Row(
                    children: [
                      Container(
                          height: 73,
                          width: 79,
                          decoration: BoxDecoration(
                              color: colorF3,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                          child: Image.asset(ImagesAssets().smallBus)),
                      WSpace(5),
                      SizedBox(
                        width: 148,
                        child: Text('KSRTC\nSwift Scania P-series'),
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: const [
                      //     SizedBox(height: 10),
                      //     Text('KSRTC'),
                      //     Text('KSRTC Swift Scania P series '),
                      //   ],
                      // ),
                      Spacer(),
                      Container(
                        width: 70,
                        height: 30,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: primaryColor,
                        ),
                        child: Center(
                            child: Text(
                          'Manage',
                          style: TextStyle(color: whileclr),
                        )),
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}

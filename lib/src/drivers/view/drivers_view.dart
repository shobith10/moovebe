import 'package:flutter/material.dart';

import 'package:move_bus/src/components/styles/colors.dart';

import '../../components/assets_images.dart';
import '../../components/spacing/spacing.dart';

class DriversView extends StatelessWidget {
  static const routName = '/drivers';

  const DriversView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black2b,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: whileclr,
          ),
        ),
        title: Text('Driver List',
            style: TextStyle(color: whileclr, fontSize: 16)),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Text(
            '21  Drivers found',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (c, i) {
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
                          child: Image.asset(ImagesAssets().elipse)),
                      WSpace(5),
                      SizedBox(
                        width: 148,
                        child: Text('Rohit sharma'),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, LayoutView.routeName,
                          //     arguments: controller.busList[index]);
                        },
                        child: Container(
                          width: 70,
                          height: 30,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: primaryColor,
                          ),
                          child: Center(
                              child: Text(
                            'Delete',
                            style: TextStyle(color: whileclr),
                          )),
                        ),
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

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:move_bus/src/components/assets_images.dart';
import 'package:move_bus/src/components/spacing/spacing.dart';
import 'package:move_bus/src/components/styles/colors.dart';
import 'package:move_bus/src/home/models/buslist_model.dart';

class LayoutView extends StatelessWidget {
  static const routeName = '/layout';
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as BusListResponse;

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
        title: Text(
          arg.busName ?? '',
          style: TextStyle(color: whileclr, fontSize: 16),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          HSpace(28),
          Container(
            height: 116,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: black2b),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        arg.driverName ?? '',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 26,
                            color: whileclr),
                      ),
                      Text(
                        'License no: PJ515196161655',
                        style: TextStyle(fontSize: 10, color: whileclr),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Image.asset(
                        ImagesAssets().driver,
                        height: 100,
                      )),
                ),
              ],
            ),
          ),
          HSpace(28),
          Container(
            //height: 200,
            margin: EdgeInsets.symmetric(horizontal: 40),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(color: colorDc)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 50,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      SvgPicture.asset(
                        'assets/images/Seat.svg',
                      ),
                    ],
                  ),
                ),
                HSpace(10),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        return SizedBox(
                          height: 500,
                          width: 50,
                          child: arg.layout == 2
                              ? i == 2
                                  ? SizedBox(
                                      width: 45,
                                    )
                                  : ListView.builder(
                                      itemCount: 9,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, i) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 22),
                                          child: SvgPicture.asset(
                                            'assets/images/Seat.svg',
                                            color: primaryColor,
                                          ),
                                        );
                                      })
                              : i == 1
                                  ? SizedBox(
                                      width: 45,
                                    )
                                  : ListView.builder(
                                      itemCount: 9,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, i) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 22),
                                          child: SvgPicture.asset(
                                            'assets/images/Seat.svg',
                                            color: primaryColor,
                                          ),
                                        );
                                      }),
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

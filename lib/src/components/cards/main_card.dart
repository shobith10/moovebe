import 'package:flutter/material.dart';
import 'package:move_bus/src/components/spacing/spacing.dart';

import '../styles/colors.dart';

class MainCard extends StatelessWidget {
  String title;
  String subTitle;
  Color cardColor;
  String assestimg;
  MainCard({
    super.key,
    required this.cardColor,
    required this.subTitle,
    required this.title,
    required this.assestimg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176,
      width: 158,
      padding: const EdgeInsets.only(left: 20, top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: whileclr),
          ),
          // const HSpace(2),
          Text(
            subTitle,
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w400, color: whileclr),
          ),
          const Spacer(),
          Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Image.asset(
                assestimg,
                height: 100,
              )),
        ],
      ),
    );
  }
}

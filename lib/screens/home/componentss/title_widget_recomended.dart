import 'package:flutter/material.dart';
import 'package:plant_project/constants.dart';

class TitleWidgetRecomended extends StatelessWidget {
  const TitleWidgetRecomended({
    super.key,
    required this.title,
  });

  final String title;
//
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      // ignore: prefer_const_literals_to_create_immutables
      child: Stack(children: [
        Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              "$title",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ))
      ]),
    );
  }
}

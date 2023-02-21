import 'package:flutter/material.dart';
import 'package:plant_project/constants.dart';
import 'package:plant_project/screens/home/componentss/title_widget_recomended.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    super.key, required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWidgetRecomended(
            title: "$title",
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: kPrimaryColor),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "More",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_project/constants.dart';
import 'package:plant_project/screens/details/icon_card.dart';
import 'package:plant_project/screens/details/icon_image.dart';
import 'package:plant_project/screens/details/title_and_price.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          IconAndImage(),
          SizedBox(
            height: kDefaultPadding * 2.5,
          ),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    print("object");
                  },
                  child: Container(
                    height: 84,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(25))),
                    child: Center(
                        child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    )),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 84,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Center(child: Text("Description")),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

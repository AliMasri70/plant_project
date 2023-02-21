import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_project/constants.dart';
import 'package:plant_project/screens/details/details_screen.dart';
import 'package:plant_project/screens/home/componentss/featured_plant_card.dart';
import 'package:plant_project/screens/home/componentss/header_with_searchbox.dart';
import 'package:plant_project/screens/home/componentss/recomended_card.dart';
import 'package:plant_project/screens/home/componentss/title_widget_recomended.dart';
import 'package:plant_project/screens/home/componentss/title_with_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          const SizedBox(
            height: 10,
          ),
          TitleWithButton(
            title: "Recomended",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecomendedCards(
                  image: "assets/images/image_1.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  ontapFunc: () {},
                  wid: 0.4,
                ),
                RecomendedCards(
                  image: "assets/images/image_2.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  ontapFunc: () {},
                  wid: 0.4,
                ),
                RecomendedCards(
                  image: "assets/images/image_3.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  ontapFunc: () {},
                  wid: 0.4,
                ),
                RecomendedCards(
                  image: "assets/images/image_1.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  ontapFunc: () {},
                  wid: 0.4,
                ),
                RecomendedCards(
                  image: "assets/images/image_2.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  ontapFunc: () {},
                  wid: 0.4,
                )
              ],
            ),
          ),
          TitleWithButton(
            title: "Featured Plants",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedPlantCard(
                  image: "assets/images/bottom_img_1.png",
                  ontapFunc: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(),
                        ));
                  },
                ),
                FeaturedPlantCard(
                  image: "assets/images/bottom_img_2.png",
                  ontapFunc: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: DetailsScreen()));
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

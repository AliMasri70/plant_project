import 'package:flutter/material.dart';
import 'package:plant_project/constants.dart';

class RecomendedCards extends StatelessWidget {
  const RecomendedCards({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.ontapFunc,
    required this.wid,
  });

  final String image, title, country;
  final int price;
  final Function ontapFunc;
  final double wid;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ontapFunc(),
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        width: size.width * wid,
        child: Column(
          children: [
            Image.asset(
              image,
              // width: size.width * 0.4,
            ),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(
                          0,
                          10,
                        ),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                      text: "$country\n".toUpperCase(),
                      style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                    )
                  ])),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

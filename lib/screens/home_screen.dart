import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_project/components/my_bottom_navigationBar.dart';
import 'package:plant_project/constants.dart';
import 'package:plant_project/screens/home/componentss/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/menu.svg"),
          ),
        ),
        body: const Body(),
        bottomNavigationBar: bottomNavigationBar());
  }
}

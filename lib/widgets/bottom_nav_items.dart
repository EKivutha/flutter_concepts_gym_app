import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          BottomNavItem(
            svgSrc: "assets/icons/calendar.svg",
            title: "Today",
            press: null,
          ),
          BottomNavItem(
            svgSrc: "assets/icons/gym.svg",
            title: "All Exercises",
            press: null,
            isActive: true,
          ),
          BottomNavItem(
            svgSrc: "assets/icons/Settings.svg",
            title: "Settings",
            press: null,
          )
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function()? press;
  final bool isActive;

  const BottomNavItem({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  svgSrc,
                  color: isActive ? kActiveIconColor : kTextColor,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: isActive ? kActiveIconColor : kTextColor),
                )
              ]),
        ));
  }
}

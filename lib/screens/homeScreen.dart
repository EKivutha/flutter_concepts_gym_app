import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym/widgets/bottom_nav_items.dart';
import 'package:gym/widgets/category_card.dart';
import 'package:gym/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(children: <Widget>[
        Container(
          height: size.height * .45,
          decoration: const BoxDecoration(
              color: Color(0xFFF5CE88),
              image: DecorationImage(
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                  alignment: Alignment.centerLeft)),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 52,
                    width: 52,
                    decoration: const BoxDecoration(
                      color: Color(0x0ff2bea1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Good Morning \n Gerald",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(fontWeight: FontWeight.w900)),
              const SearchBar(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                    const CategoryCard(
                      svgSrc: "assets/icons/Hamburger.svg",
                      title: "Diet Recommendation",
                      press: null,
                    ),
                    const CategoryCard(
                        svgSrc: "assets/icons/Excrecises.svg",
                        title: "Kegel Exercises",
                        press: null),
                    CategoryCard(
                        svgSrc: "assets/icons/Meditation.svg",
                        title: "Meditation",
                        press: () {
                          Navigator.pushNamed(context, '/meditation');
                        }),
                    const CategoryCard(
                      svgSrc: "assets/icons/yoga.svg",
                      title: "Yoga",
                      press: null,
                    )
                  ]))
            ],
          ),
        ))
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym/constants.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function()? press;

  const CategoryCard({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: kShadowColor,
              )
            ],
            borderRadius: BorderRadius.circular(13),
          ),
          child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset(svgSrc),
                      const Spacer(),
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ))),
    );
  }
}

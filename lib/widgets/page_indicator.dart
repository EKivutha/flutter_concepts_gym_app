import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int currentIndex;
  final int pageCount;
  const PageIndicator(
      {Key? key, required this.currentIndex, required this.pageCount})
      : super(key: key);

  Widget _indicator(int index) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 4.0,
      decoration: BoxDecoration(
          color: index == currentIndex ? Colors.white : const Color(0xFF3E4759),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 2.0),
                blurRadius: 2.0)
          ]),
    ));
  }

  List<Widget> _buildPageIndicators() => List.generate(pageCount, _indicator);

  @override
  Widget build(BuildContext context) => Row(children: _buildPageIndicators());
}

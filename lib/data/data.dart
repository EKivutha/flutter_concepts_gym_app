import 'dart:ui';

import 'package:flutter/material.dart';

var pageList = [
  PageModel(
      imageUrl: "assets/images/illustration.png",
      title: "MUSIC",
      body: "EXPERIENCE WICKED PLAYLISTS",
      titleGradient: [const Color(0xFF9708CC), const Color(0xFF43CBFF)]),
  PageModel(
      imageUrl: "assets/images/illustration2.png",
      title: "SPA",
      body: "FEEL THE MAGIC OF WELLNESS",
      titleGradient: [const Color(0xFFE2859F), const Color(0xFFFCCF31)]),
  PageModel(
      imageUrl: "assets/images/illustration3.png",
      title: "TRAVEL",
      body: "LET'S HIKE UP",
      titleGradient: [const Color(0xFF5EFCE8), const Color(0xFF736EFE)]),
];

class PageModel {
  final String imageUrl;
  final String title;
  final String body;
  List<Color> titleGradient;

  PageModel(
      {required this.imageUrl,
      required this.title,
      required this.body,
      required this.titleGradient});
}

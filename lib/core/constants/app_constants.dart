import 'dart:ui';

import 'package:flutter/material.dart';

class AppConstants {
  static const String appName = 'Hobbify_Assignment';
  static const String baseImageAssetsPath = "assets/images/";
  static const String baseIconAssetsPath = "assets/icons/";
  static const String baseSvgAssetsPath = "assets/svg/";

  static const String Inter = "Inter";
}

void navigatePushTo(BuildContext context, Widget destination) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
}

List<Locale> getSupportedLocales() {
  return [
    Locale('en'), // English
  ];
}

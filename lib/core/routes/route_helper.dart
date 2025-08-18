import 'package:flutter/material.dart';
import 'package:hobbyfi_assignment/core/routes/route_constant.dart';
import 'package:hobbyfi_assignment/features/screens/screen1.dart';
import 'package:hobbyfi_assignment/widgets/custom_text_cm.dart';

class RouteHelper {
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();

  static String getScreen1Route() => RouteConstant.Screen1;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.Screen1:
        return MaterialPageRoute(
          builder: (_) => Screen1(),
          settings: RouteSettings(name: RouteHelper.getScreen1Route()),
        );

      default:
        return MaterialPageRoute(
          builder:
              (_) => const Scaffold(
                body: Center(child: CustomText('No route found')),
              ),
        );
    }
  }
}

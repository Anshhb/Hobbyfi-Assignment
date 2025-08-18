import 'package:croppy/croppy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hobbyfi_assignment/core/constants/app_strings.dart';
import 'package:hobbyfi_assignment/core/constants/size_config.dart';
import 'package:hobbyfi_assignment/core/constants/app_constants.dart';
import 'package:hobbyfi_assignment/core/routes/route_helper.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hobbyfi_assignment/l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    SizeConfig.init(context);
    return GetMaterialApp(
      title: AppStrings.appName,

      initialRoute: RouteHelper.getScreen1Route(),
      onGenerateRoute: RouteHelper.generateRoute,
      navigatorObservers: [RouteHelper.routeObserver],
      debugShowCheckedModeBanner: false,
      supportedLocales: getSupportedLocales(),
      localizationsDelegates: [
        AppLocalizations.delegate,
        CroppyLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}

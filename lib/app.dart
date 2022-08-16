import 'package:flutter/material.dart';
import 'package:project/config/routes/app_routes.dart';
import 'package:project/config/themes/app_theme.dart';
import 'package:project/core/utils/app_strings.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}

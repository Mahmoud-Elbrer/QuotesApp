import 'package:flutter/material.dart';

import '../../core/utils/app_strings.dart';
import '../../features/favorite_quote/presentation/screen/favorite_quote_screen.dart';
import '../../features/random_quote/presentation/screens/quote_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String favoriteRoute = '/favorite';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: ((context) => const QuoteScreen()));

      case Routes.favoriteRoute:
        return MaterialPageRoute(
            builder: ((context) => const FavoriteQuoteScreen()));

      default:
        return underlineRoute();
    }
  }

  static Route<dynamic> underlineRoute() {
    return MaterialPageRoute(
        builder: ((context) => const Scaffold(
              body: Center(child: Text(AppStrings.noRouteFound)),
            )));
  }
}

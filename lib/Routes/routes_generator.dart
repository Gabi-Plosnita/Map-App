import 'package:flutter/material.dart';
import 'package:map_app/HomePage/home_page.dart';
import 'package:map_app/SearchPage/search_page.dart';
import 'package:map_app/routes/routes_name.dart';


class RoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case searchPage:
        return MaterialPageRoute(builder: (context) => const SearchPage());
    }

    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text('Page is not found'),
      ),
    );
  }
}

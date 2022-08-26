import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/first_page.dart';
import 'main_Page.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'error_page.dart';

class GenerateRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    Route<dynamic>? createRoute(Widget pageToGo) {
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        return CupertinoPageRoute(builder: (context) => pageToGo);
      } else if (defaultTargetPlatform == TargetPlatform.android) {
        return MaterialPageRoute(builder: (context) => pageToGo);
      } else {
        return CupertinoPageRoute(builder: (context) => pageToGo);
      }
    }

    switch (settings.name) {
      case ('/'):
        return createRoute(const MainPage());
      case ('/firstPage'):
        return createRoute(const FirstPage());
      case ('/secondPage'):
        return createRoute(const SecondPage());
      default:
        return createRoute(const ErrorPage());
    }
  }
}

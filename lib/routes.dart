import 'package:flutter/material.dart';
import 'package:learning_git_flutter/akhil/women_screen.dart';
import 'package:learning_git_flutter/main.dart';

class Routes {
  static const String homePage = '/';
  static const String womenPage = '/women';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      homePage: (context) => MyHomePage(title: 'Ecommerce website'),
      womenPage: (context) => WomenScreenDart(),
    };
  }
}

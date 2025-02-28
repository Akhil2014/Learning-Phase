import 'package:flutter/material.dart';
import 'package:learning_git_flutter/akhil/wishlist_screen.dart';
import 'package:learning_git_flutter/akhil/women_screen.dart';
import 'package:learning_git_flutter/main.dart';

class Routes {
  static const String homePage = '/';
  static const String womenPage = '/women';
  static const String menPage = '/men';
  static const String wishList = '/wishlist';
  static const String cartList = '/cartlist';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      homePage: (context) => MyHomePage(title: 'Ecommerce website'),
      womenPage: (context) => WomenScreenDart(),
      wishList: (context) => wishListScreenDart(),
    };
  }
}

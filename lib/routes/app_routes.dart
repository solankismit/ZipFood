import 'package:flutter/material.dart';

import '../homePage/foodPage/cartPage/cart_screen.dart';
import '../homePage/foodPage/searchPage/search_screen.dart';

class AppRoutes {
  static String loginRoute = "/login";
  static String homeRoute = "/home";
  static String productRoute = "/product";
  static const String homepagePage = '/homepage_page';

  static const String orderPlacedScreen = '/order_placed_screen';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String productMenuPage = '/product_menu_page';

  static const String searchScreen = '/search_screen';

  static const String cartScreen = '/cart_screen';

  static const String categoryPageScreen = '/category_page_screen';

  static const String trackOrderScreen = '/track_order_screen';

  static const String profileScreen = '/profile_screen';

  static const String checkoutThreeScreen = '/checkout_three_screen';

  static const String trackOrderOneScreen = '/track_order_one_screen';

  static const String checkoutOneScreen = '/checkout_one_screen';

  static const String checkoutTwoScreen = '/checkout_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String foodscreen = '/food_screen';
  static Map<String, WidgetBuilder> routes = {
    // homepageContainerScreen: (context) => HomepageContainerScreen(),
    // loginPageScreen: (context) => LoginPageScreen(),
    searchScreen: (context) => SearchScreen(),
    cartScreen: (context) => CartScreen(),
    // categoryPageScreen: (context) => CategoryPageScreen(),
    // trackOrderScreen: (context) => TrackOrderScreen(),
    // profileScreen: (context) => ProfileScreen(),
    // checkoutThreeScreen: (context) => CheckoutThreeScreen(),
    // trackOrderOneScreen: (context) => TrackOrderOneScreen(),
    // checkoutOneScreen: (context) => CheckoutOneScreen(),
    // checkoutTwoScreen: (context) => CheckoutTwoScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen()
  };
}

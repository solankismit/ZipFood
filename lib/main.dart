import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sizer/sizer.dart';
import 'package:zipfood/constants.dart';
import 'package:zipfood/homePage/foodPage/cartPage/cart_screen.dart';
import 'package:zipfood/homePage/foodPage/foodlistscreen.dart';
import 'package:zipfood/homePage/foodPage/foodscreen.dart';
import 'package:zipfood/homePage/historyPage/historyscreen.dart';
import 'package:zipfood/homePage/homescreen.dart';
import 'package:zipfood/loginPage/authentication.dart';
import 'package:zipfood/loginPage/loginscreen.dart';
import 'package:zipfood/routes/app_routes.dart';
import 'package:zipfood/tempage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'homePage/foodPage/checkout_one_screen/checkout_one_screen.dart';
import 'homePage/foodPage/checkout_three_screen/checkout_three_screen.dart';
import 'homePage/foodPage/checkout_two_screen/checkout_two_screen.dart';
import 'homePage/foodPage/orderPlacedPage/order_placed.dart';
import 'homePage/foodPage/searchPage/search_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseAppCheck.instance.activate(
    // // Default provider for Android is the Play Integrity provider. You can use the "AndroidProvider" enum to choose
    // // your preferred provider. Choose from:
    // // 1. debug provider
    // // 2. safety net provider
    // // 3. play integrity provider
    // androidProvider: AndroidProvider.debug,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // home: LoginPageWidget(),
          initialRoute: Auth().authuser!=null? AppRoutes.homeRoute:'/',
          unknownRoute: GetPage(name: '/notfound', page: () => LoginPageWidget()),
          getPages: [
            GetPage(name:AppRoutes.orderPlacedScreen, page: () => OrderPlacedScreen()),
            GetPage(name:AppRoutes.foodscreen, page: () => FoodListScreen()),
            GetPage(name: AppRoutes.loginRoute, page: () => LoginPageWidget()),
            GetPage(name: AppRoutes.homeRoute, page: () => HomeScreen()),
            GetPage(name: AppRoutes.homepagePage, page: () => FoodScreen()),
            // GetPage(name: AppRoutes., page: () => HistoryScreen()),
            GetPage(name: AppRoutes.cartScreen, page: () => CartScreen()),
            GetPage(name: AppRoutes.searchScreen, page: () => SearchScreen()),
            GetPage(name: AppRoutes.checkoutOneScreen, page: () => CheckoutOneScreen()),
            GetPage(name: AppRoutes.checkoutTwoScreen, page: () => CheckoutTwoScreen()),
            GetPage(name: AppRoutes.checkoutThreeScreen, page: () => CheckoutThreeScreen()),
            // GetPage(name: '/second', page: () => Second()),
            // GetPage(
            //     name: '/third',
            //     page: () => Third(),
            //     transition: Transition.zoom
            // ),
          ],
          // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}


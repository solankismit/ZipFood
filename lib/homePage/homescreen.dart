//Create Stateless Homescreen with GetX bottom bar containing 3 tabs
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zipfood/constants.dart';
import 'package:zipfood/homePage/foodPage/foodscreen.dart';
import 'package:zipfood/homePage/historyPage/historyscreen.dart';
import 'package:zipfood/homePage/profilePage/profiescreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<Widget> _screens = [
    FoodScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final BottomNavBarController landingPageController =
    Get.put(BottomNavBarController(), permanent: false);
    return Scaffold(
      body: Obx(() => IndexedStack(
        index: landingPageController.currentIndex.value,
        children: _screens,
      )),
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: landingPageController.currentIndex.value,
            onTap: landingPageController.changeIndex,
            items: [
              BottomNavigationBarItem(

                icon:SvgPicture.asset('assets/icons/home.svg',color: Color(0xffBCB3B3),semanticsLabel: ''),
                // icon: Icon(Icons.home),
                activeIcon: SvgPicture.asset('assets/icons/home.svg',color: kPrimaryColor,semanticsLabel: ''),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/history.svg',color: Color(0xffBCB3B3),semanticsLabel: ''),
                label: "History",
                activeIcon: SvgPicture.asset('assets/icons/history.svg',color: kPrimaryColor,semanticsLabel: '',),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/profile.svg',color: Color(0xffBCB3B3),semanticsLabel: ''),
                label: "Profile",
                activeIcon: SvgPicture.asset('assets/icons/profile.svg',color: kPrimaryColor,semanticsLabel: ''),
              ),
            ],
          );
        },
      ),
    );
  }
}
//Create BottomNavBarController

class BottomNavBarController extends GetxController {
  var currentIndex = 0.obs;
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
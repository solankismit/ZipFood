import 'package:flutter/material.dart';

import '../utils/color_constant.dart';
import '../utils/image_constant.dart';
import '../utils/size_utils.dart';
import 'custom_image_view.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgStar,
      type: BottomBarEnum.Star,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconlyboldsearch,
      type: BottomBarEnum.Iconlyboldsearch,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      type: BottomBarEnum.User,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            3,
          ),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getSize(
                29,
              ),
              width: getSize(
                29,
              ),
              color: ColorConstant.black900,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getVerticalSize(
                23,
              ),
              width: getHorizontalSize(
                22,
              ),
              color: ColorConstant.red90001,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Star,
  Iconlyboldsearch,
  User,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

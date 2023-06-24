import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';
import '../../../utils/color_constant.dart';
import 'package:zipfood/homePage/foodPage/productPage/widgets/product_menu_item_widget.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_title.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../foodscreen.dart';


// ignore_for_file: must_be_immutable
class CheckoutThreeScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
            height: getVerticalSize(733),
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: getPadding(
                          left: 32, top: 48, right: 32, bottom: 13),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(left: 116),
                                child: Text("Zipfood",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold18)),
                            Padding(
                                padding: getPadding(top: 31),
                                child: Text("Payment",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold25)),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(186),
                                    width: getHorizontalSize(278),
                                    margin: getMargin(top: 26),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  width: getHorizontalSize(
                                                      278),
                                                  child: RichText(
                                                      text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                                text:
                                                                    "Meat Loaf                                          ₹ 500\n\nGST                                                     ₹ 5\n\nDelivery Charges                             ₹ 25\n",
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .blueGray40001,
                                                                    fontSize:
                                                                        getFontSize(
                                                                            14),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight.w400)),
                                                            TextSpan(
                                                                text: "",
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .red90005,
                                                                    fontSize:
                                                                        getFontSize(
                                                                            18),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight.w300)),
                                                            TextSpan(
                                                                text:
                                                                    "\nTOTAL                                     ",
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .red90004,
                                                                    fontSize:
                                                                        getFontSize(
                                                                            18),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight.w500)),
                                                            TextSpan(
                                                                text:
                                                                    "₹ 530",
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .red90004,
                                                                    fontSize:
                                                                        getFontSize(
                                                                            18),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight.w600))
                                                          ]),
                                                      textAlign:
                                                          TextAlign.left))),
                                          Align(
                                              alignment:
                                                  Alignment.bottomCenter,
                                              child: Padding(
                                                  padding: getPadding(
                                                      bottom: 37),
                                                  child: SizedBox(
                                                      width:
                                                          getHorizontalSize(
                                                              278),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .red200Ba))))
                                        ]))),
                            Padding(
                                padding: getPadding(left: 6, top: 58),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomButton(
                                          height: getVerticalSize(42),
                                          width: getHorizontalSize(176),
                                          text: "Credit Card Number",
                                          variant:
                                              ButtonVariant.OutlineRed90001,
                                          shape:
                                              ButtonShape.RoundedBorder13,
                                          fontStyle: ButtonFontStyle
                                              .RobotoRegular15),
                                      CustomButton(
                                          height: getVerticalSize(42),
                                          width: getHorizontalSize(118),
                                          text: "XXXX",
                                          variant:
                                              ButtonVariant.OutlineRed90001,
                                          shape:
                                              ButtonShape.RoundedBorder13,
                                          fontStyle: ButtonFontStyle
                                              .RobotoRegular15)
                                    ])),
                            Spacer(),
                            CustomButton(
                                height: getVerticalSize(37),
                                width: getHorizontalSize(128),
                                text: "      Continue",
                                alignment: Alignment.center)
                          ]))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: getMargin(left: 2),
                      padding: getPadding(
                          left: 14, top: 52, right: 14, bottom: 52),
                      decoration: AppDecoration.fillGray900a0,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: getVerticalSize(12),
                                width: getHorizontalSize(6),
                                onTap: () {
                                  onTapImgArrowleft(context);
                                }),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgXcircle,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.centerRight,
                                margin: getMargin(right: 36),
                                onTap: () {
                                  onTapImgXcircle(context);
                                }),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(
                                        left: 38, right: 39, bottom: 319),
                                    padding: getPadding(
                                        left: 70,
                                        top: 20,
                                        right: 70,
                                        bottom: 20),
                                    decoration: AppDecoration
                                        .fillDeeporange50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder9),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 27),
                                              child: Text("Place Order?",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium20)),
                                          Container(
                                              width: getHorizontalSize(128),
                                              margin: getMargin(top: 30),
                                              padding: getPadding(
                                                  left: 30,
                                                  top: 9,
                                                  right: 45,
                                                  bottom: 9),
                                              decoration: AppDecoration
                                                  .txtOutlinePink90066
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtRoundedBorder9),
                                              child: Text("        Yes",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14))
                                        ])))
                          ])))
            ])),
        // bottomNavigationBar:
        //     CustomBottomBar(onChanged: (BottomBarEnum type) {
        //   Navigator.pushNamed(
        //       navigatorKey.currentContext!, getCurrentRoute(type));
        // }))
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Star:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Iconlyboldsearch:
        return AppRoutes.productMenuPage;
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }
  //
  // ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.homepagePage:
  //       return HomepagePage();
  //     case AppRoutes.productMenuPage:
  //       return ProductMenuPage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapImgXcircle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutTwoScreen);
  }
}

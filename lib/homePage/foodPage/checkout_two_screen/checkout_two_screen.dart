import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
class CheckoutTwoScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
            height: getVerticalSize(84),
            leadingWidth: 32,
            leading: AppbarImage(
                height: getVerticalSize(12),
                width: getHorizontalSize(6),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 26, top: 23, bottom: 20),
                onTap: () {
                  onTapArrowleft5(context);
                }),
            title:
                AppbarTitle(text: "Zipfood", margin: getMargin(left: 93))),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(left: 32, top: 13, right: 32, bottom: 13),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(top: 10),
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
                                        width: getHorizontalSize(278),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "Meat Loaf                                          ₹ 500\n\nGST                                                     ₹ 5\n\nDelivery Charges                             ₹ 25\n",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .blueGray40001,
                                                      fontSize:
                                                          getFontSize(14),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              TextSpan(
                                                  text: "",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .red90005,
                                                      fontSize:
                                                          getFontSize(18),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w300)),
                                              TextSpan(
                                                  text:
                                                      "\nTOTAL                                     ",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .red90004,
                                                      fontSize:
                                                          getFontSize(18),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "₹ 530",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .red90004,
                                                      fontSize:
                                                          getFontSize(18),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600))
                                            ]),
                                            textAlign: TextAlign.left))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(bottom: 37),
                                        child: SizedBox(
                                            width: getHorizontalSize(278),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness:
                                                    getVerticalSize(1),
                                                color: ColorConstant
                                                    .red200Ba))))
                              ]))),
                  Padding(
                      padding: getPadding(left: 16, top: 89),
                      child: Text("Pay by",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold18)),
                  Padding(
                      padding: getPadding(left: 16, top: 17, right: 71),
                      child: Row(children: [
                        Container(
                            height: getSize(16),
                            width: getSize(16),
                            margin: getMargin(top: 4, bottom: 3),
                            decoration: BoxDecoration(
                                color: ColorConstant.red90004,
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(8)))),
                        Padding(
                            padding:
                                getPadding(left: 13, top: 3, bottom: 2),
                            child: Text("Credit /Debit/ATM cards",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular14)),
                        CustomImageView(
                            imagePath: ImageConstant.img2262264888cre,
                            height: getVerticalSize(23),
                            width: getHorizontalSize(30),
                            margin: getMargin(left: 13))
                      ])),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: getPadding(left: 35, top: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    width: getHorizontalSize(123),
                                    padding: getPadding(
                                        left: 14,
                                        top: 8,
                                        right: 14,
                                        bottom: 8),
                                    decoration: AppDecoration
                                        .txtOutlineRed90001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder9),
                                    child: Text("Credit Card Number",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRegular1052)),
                                Container(
                                    width: getHorizontalSize(82),
                                    margin: getMargin(left: 7),
                                    padding: getPadding(
                                        left: 28,
                                        top: 8,
                                        right: 28,
                                        bottom: 8),
                                    decoration: AppDecoration
                                        .txtOutlineRed90001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder9),
                                    child: Text("XXXX",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRegular1052)),
                                Container(
                                    width: getHorizontalSize(54),
                                    margin: getMargin(
                                        left: 8, top: 5, bottom: 3),
                                    padding: getPadding(
                                        left: 14,
                                        top: 5,
                                        right: 14,
                                        bottom: 5),
                                    decoration: AppDecoration
                                        .txtOutlineBlack90033
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder5),
                                    child: Text("Change",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold6))
                              ]))),
                  Padding(
                      padding: getPadding(left: 17, top: 10),
                      child: Row(children: [
                        Container(
                            height: getSize(16),
                            width: getSize(16),
                            decoration: BoxDecoration(
                                color: ColorConstant.gray40002,
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(8)))),
                        Padding(
                            padding: getPadding(left: 13),
                            child: Text("UPI",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular14)),
                        CustomImageView(
                            imagePath: ImageConstant.imgUpiicon1,
                            height: getVerticalSize(16),
                            width: getHorizontalSize(64),
                            margin: getMargin(left: 11))
                      ])),
                  Padding(
                      padding: getPadding(left: 17, top: 15),
                      child: Row(children: [
                        Container(
                            height: getSize(16),
                            width: getSize(16),
                            decoration: BoxDecoration(
                                color: ColorConstant.gray40002,
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(8)))),
                        Padding(
                            padding: getPadding(left: 13),
                            child: Text("Wallets",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular14)),
                        CustomImageView(
                            imagePath: ImageConstant.imgDownload1,
                            height: getVerticalSize(16),
                            width: getHorizontalSize(29),
                            margin: getMargin(left: 18))
                      ])),
                  CustomButton(
                      height: getVerticalSize(37),
                      width: getHorizontalSize(128),
                      text: "      Continue",
                      margin: getMargin(top: 69),
                      onTap: () {
                        onTapContinue(context);
                      },
                      alignment: Alignment.center)
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

  onTapContinue(BuildContext context) {
    Get.toNamed(AppRoutes.checkoutThreeScreen);
  }

  onTapArrowleft5(BuildContext context) {
    Get.back();
  }
}

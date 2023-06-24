import 'package:flutter/material.dart';
import 'package:zipfood/homePage/foodPage/foodscreen.dart';
import '../../../routes/app_routes.dart';
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
import '../../../widgets/custom_search_view.dart';
import '../productPage/product_menu_page.dart';

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  TextEditingController searchtwoController = TextEditingController();

  TextEditingController searchthreeController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(87),
                leadingWidth: 41,
                leading: AppbarImage(
                    height: getVerticalSize(12),
                    width: getHorizontalSize(6),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 35, top: 20, bottom: 23),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "ZipFood")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 16, bottom: 16),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  CustomSearchView(
                      focusNode: FocusNode(),
                      controller: searchController,
                      hintText: "Thepla",
                      margin: getMargin(left: 38, top: 50, right: 38),
                      variant: SearchViewVariant.FillDeeporange50,
                      fontStyle: SearchViewFontStyle.PoppinsRegular15,
                      suffix: Container(
                          margin: getMargin(
                              left: 30, top: 11, right: 25, bottom: 11),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgSearch)),
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(43))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 44, top: 90),
                          child: Text("Recent Searches",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular15))),
                  Padding(
                      padding: getPadding(left: 62, top: 22, right: 62),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Chicken tikka",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular13),
                            CustomImageView(
                                svgPath: ImageConstant.imgSearchRed300,
                                height: getSize(11),
                                width: getSize(11),
                                margin: getMargin(top: 2, bottom: 6))
                          ])),
                  CustomSearchView(
                      focusNode: FocusNode(),
                      controller: searchtwoController,
                      hintText: "Butter chicken",
                      margin: getMargin(left: 44, top: 15, right: 47),
                      suffix: Container(
                          margin: getMargin(
                              left: 30, top: 5, right: 15, bottom: 12),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgSearchRed300)),
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(28))),
                  CustomSearchView(
                      focusNode: FocusNode(),
                      controller: searchthreeController,
                      hintText: "Veg Fried Rice",
                      margin: getMargin(left: 44, top: 9, right: 47),
                      suffix: Container(
                          margin: getMargin(
                              left: 30, top: 5, right: 15, bottom: 12),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgSearchRed300)),
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(28))),
                  Spacer(),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: ColorConstant.red2002d,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder9),
                      child: Container(
                          height: getVerticalSize(134),
                          width: getHorizontalSize(357),
                          padding: getPadding(top: 6, bottom: 6),
                          decoration: AppDecoration.outlineBlack900192.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder9),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(top: 2),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(left: 5),
                                              child: Text("Top Picks for you",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold1241)),
                                          SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              padding: getPadding(top: 9),
                                              child: IntrinsicWidth(
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImages159x76,
                                                        height:
                                                            getVerticalSize(59),
                                                        width:
                                                            getHorizontalSize(
                                                                76),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    9))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgDownload1159x76,
                                                        height:
                                                            getVerticalSize(59),
                                                        width:
                                                            getHorizontalSize(
                                                                76),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    9)),
                                                        margin: getMargin(
                                                            left: 17)),
                                                    Container(
                                                        height:
                                                            getVerticalSize(59),
                                                        width:
                                                            getHorizontalSize(
                                                                76),
                                                        margin:
                                                            getMargin(left: 17),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImages11,
                                                                  height:
                                                                      getVerticalSize(
                                                                          59),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          76),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              9)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgDownload2159x76,
                                                                  height:
                                                                      getVerticalSize(
                                                                          59),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          76),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              9)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)
                                                            ])),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVerticalshott59x76,
                                                        height:
                                                            getVerticalSize(59),
                                                        width:
                                                            getHorizontalSize(
                                                                76),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    9)),
                                                        margin: getMargin(
                                                            left: 17)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgTikkakebabwit59x76,
                                                        height:
                                                            getVerticalSize(59),
                                                        width:
                                                            getHorizontalSize(
                                                                76),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    9)),
                                                        margin: getMargin(
                                                            left: 23)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgFriednoodlesplate59x76,
                                                        height:
                                                            getVerticalSize(59),
                                                        width:
                                                            getHorizontalSize(
                                                                76),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    9)),
                                                        margin: getMargin(
                                                            left: 23)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgModernroasted59x76,
                                                        height:
                                                            getVerticalSize(59),
                                                        width:
                                                            getHorizontalSize(
                                                                76),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    9)),
                                                        margin: getMargin(
                                                            left: 23)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .img06ff8b72d2824af59x76,
                                                        height:
                                                            getVerticalSize(59),
                                                        width:
                                                            getHorizontalSize(
                                                                76),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    9)),
                                                        margin:
                                                            getMargin(left: 23))
                                                  ])))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(left: 25),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Chicken Biriyani",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular8),
                                                  Row(children: [
                                                    Text("₹250",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoBold572),
                                                    Container(
                                                        height:
                                                            getVerticalSize(5),
                                                        width:
                                                            getHorizontalSize(
                                                                16),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                      "₹1000",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoMedium462)),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: SizedBox(
                                                                      width:
                                                                          getHorizontalSize(
                                                                              16),
                                                                      child: Divider(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          thickness: getVerticalSize(
                                                                              1),
                                                                          color:
                                                                              ColorConstant.gray600)))
                                                            ]))
                                                  ])
                                                ]),
                                            Padding(
                                                padding: getPadding(left: 28),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Butter Chicken",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular8),
                                                      Row(children: [
                                                        Text("₹500",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoBold572),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    5),
                                                            width:
                                                                getHorizontalSize(
                                                                    16),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Text(
                                                                          "₹1000",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRobotoMedium462)),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: SizedBox(
                                                                          width: getHorizontalSize(
                                                                              16),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: ColorConstant.gray600)))
                                                                ]))
                                                      ])
                                                    ]))
                                          ]),
                                          Padding(
                                              padding: getPadding(left: 2),
                                              child: Row(children: [
                                                Text("Save 50% ",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular5),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 70),
                                                    child: Text("Save 50% ",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular5))
                                              ]))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: getPadding(right: 101, bottom: 12),
                                    child: Text("Lamp Stew",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular8))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: getPadding(right: 132, bottom: 5),
                                    child: Text("₹500",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold572))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: IntrinsicWidth(
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                Text("Paneer Butter Masala",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular6),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 37, bottom: 3),
                                                    child: Text("Tikka Kebab",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular8)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 39, bottom: 3),
                                                    child: Text(
                                                        "Chicken Fried Noodles",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular6)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 23, bottom: 3),
                                                    child: Text("Beef Steak",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular6)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 23, bottom: 3),
                                                    child: Text(
                                                        "Italian Spaghetti",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular6))
                                              ]))),
                                      SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          padding: getPadding(top: 1),
                                          child: IntrinsicWidth(
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                Text("₹150",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoBold572),
                                                Container(
                                                    height: getVerticalSize(6),
                                                    width:
                                                        getHorizontalSize(16),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              1),
                                                                  child: Text(
                                                                      "₹ 300",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoMedium462))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          16),
                                                                  child: Divider(
                                                                      height:
                                                                          getVerticalSize(
                                                                              1),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              1),
                                                                      color: ColorConstant
                                                                          .gray600)))
                                                        ])),
                                                Spacer(flex: 25),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 3, bottom: 2),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                16),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .gray600))),
                                                Spacer(flex: 25),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 3, bottom: 2),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                16),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .gray600))),
                                                Spacer(flex: 25),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 3, bottom: 2),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                16),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .gray600))),
                                                Spacer(flex: 25),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 3, bottom: 2),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                16),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .gray600)))
                                              ]))),
                                      SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          padding: getPadding(left: 2),
                                          child: IntrinsicWidth(
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                Text("Save 50% ",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular5),
                                                Spacer(flex: 25),
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 3),
                                                    child: Text("Save 50% ",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular5)),
                                                Spacer(flex: 24),
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 3),
                                                    child: Text("Save 50% ",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular5)),
                                                Spacer(flex: 24),
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 3),
                                                    child: Text("Save 50% ",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular5)),
                                                Spacer(flex: 24),
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 3),
                                                    child: Text("Save 50% ",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular5))
                                              ])))
                                    ])),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: getVerticalSize(5),
                                    width: getHorizontalSize(16),
                                    margin: getMargin(right: 115, bottom: 6),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text("₹1000",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium462)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  width: getHorizontalSize(16),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .gray600)))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: getPadding(right: 121),
                                    child: Text("Save 50% ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular5)))
                          ])))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
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
  //       return FoodScreen();
  //     case AppRoutes.productMenuPage:
  //       return ProductMenuPage();
  //     default:
  //       return FoodScreen();
  //   }
  // }
  //
  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}

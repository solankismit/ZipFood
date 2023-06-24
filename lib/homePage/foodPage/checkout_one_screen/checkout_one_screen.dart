import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zipfood/homePage/foodPage/cartPage/cart_screen.dart';
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
class CheckoutOneScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as OrderArgs;
    String name = args.name;
    //Parse String to int
    int total = int.parse(args.price)*args.quantity;
    int GST = (total*0.05).round();
    int delivery = 45;
    int netTotal = total+GST+delivery;
    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
            height: getVerticalSize(90),
            leadingWidth: 35,
            leading: AppbarImage(
                height: getVerticalSize(12),
                width: getHorizontalSize(6),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 29, top: 17, bottom: 26),
                onTap: () {
                  onTapArrowleft4(context);
                }),
            centerTitle: true,
            title: AppbarTitle(text: "Zipfood")),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(left: 32, top: 13, right: 32, bottom: 13),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(top: 4),
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
                                                      "$name                                       ₹ $total\n\nGST                                                      ₹ $GST\n\nDelivery Charges                               ₹ $delivery\n",
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
                                                      "\nTOTAL                                 ",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .red90004,
                                                      fontSize:
                                                          getFontSize(18),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "₹ $netTotal",
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
                                        padding: getPadding(bottom: 6),
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
                      child: Text("Cash on Delivery",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold18)),

                  Spacer(),
                  CustomButton(
                      onTap: () {
                        onTapEllipseseventee(context: context,name: name,price: args.price,ingredients: args.ingredients,id: args.id,quantity: args.quantity);
                      },
                      height: getVerticalSize(37),
                      width: getHorizontalSize(128),
                      text: "Continue",
                      alignment: Alignment.center)
                ])),
        // bottomNavigationBar:
        //     CustomBottomBar(onChanged: (BottomBarEnum type) {
        //   Navigator.pushNamed(
        //       navigatorKey.currentContext!, getCurrentRoute(type));
        // })
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



  onTapEllipseseventee({required BuildContext context, required String name, required String price, required List<dynamic> ingredients, required String id, required int quantity}) {
    Get.toNamed(AppRoutes.orderPlacedScreen,arguments: OrderArgs(name,price,ingredients,id,quantity));
  }

  onTapArrowleft4(BuildContext context) {
    Get.back();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zipfood/homePage/foodPage/productPage/product_menu_page.dart';

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
class CartScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final QuantityController quantityController = Get.put(QuantityController());

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as CartArgs;

    String name = args.name;
    String image = args.imgURL;
    String price = args.price;
    String id = args.id;
    String foodtype = args.isVeg?"vegetarian":"non vegetarian";
    List<dynamic> ingredients = args.ingredients;

    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildAppBar(
              name: "ZipFood",
              context: context,
              leftIcon: SvgPicture.asset('assets/icons/back.svg'),
              rightIcon: SvgPicture.asset('assets/icons/cart.svg'),
              leftIconFunction: () {
                Navigator.pop(context);
              },
              rightIconFunction: () {
                Get.toNamed(AppRoutes.cartScreen);
              },
            ),
            Container(
              height: size.height * 0.75,
                width: double.maxFinite,
                padding: getPadding(left: 32, top: 13, right: 32, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 6),
                          child: Text("My Cart",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold25)),
                      Padding(
                          padding: getPadding(left: 8, top: 41, right: 40),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: 'assets/images/$image.jpg',
                                              height: getVerticalSize(98),
                                              width: getHorizontalSize(159)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 16, top: 12),
                                              child: Text("Ingredients",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold16))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 14, bottom: 36),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(left: 1),
                                              child: Text(name,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium1345)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 3, top: 2),
                                              child: Text("Rs. $price",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoBold1135)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 3, top: 6),
                                              child: Text("Quantity Per Person",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium916Red90001)),
                                          QuantityButton(),
                                          CustomButton(
                                              height: getVerticalSize(25),
                                              width: getHorizontalSize(72),
                                              text: "Place Order",
                                              margin: getMargin(top: 7),
                                              variant: ButtonVariant
                                                  .OutlineDeeporange1003f,
                                              padding:
                                                  ButtonPadding.PaddingAll6,
                                              fontStyle: ButtonFontStyle
                                                  .RobotoMedium986,
                                              onTap: () {
                                                onTapPlaceorder(context: context, id: id, name: name, quantity: quantityController.quantity.value, price: price, ingredients:ingredients);
                                              })
                                        ]))
                              ])),
                      Container(
                          width: getHorizontalSize(141),
                          margin: getMargin(left: 24, top: 3),
                          child: Text(
                              ingredients.map((e) => e.toString().capitalize).join("\n"),
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium11)),
                      const Spacer(),
                      CustomButton(
                          height: getVerticalSize(37),
                          width: getHorizontalSize(128),
                          text: "Order All",
                          onTap: () {
                            onTapOrderall(context: context, id: id, name: name, quantity: quantityController.quantity.value, price: price, ingredients:ingredients);
                          },
                          alignment: Alignment.center)
                    ])),
          ],
        ),
       );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    return "";
    // switch (type) {
    //   case BottomBarEnum.Star:
    //     return AppRoutes.homepagePage;
    //   case BottomBarEnum.Iconlyboldsearch:
    //     return AppRoutes.productMenuPage;
    //   case BottomBarEnum.User:
    //     return "/";
    //   default:
    //     return "/";
    // }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    return Placeholder();
    // switch (currentRoute) {
    //   case AppRoutes.homepagePage:
    //     return HomepagePage();
    //   case AppRoutes.productMenuPage:
    //     return ProductMenuPage();
    //   default:
    //     return DefaultWidget();
    // }
  }

  onTapPlaceorder({required BuildContext context, required String name, required String price, required List<
      dynamic> ingredients, required String id, required int quantity}) {
    Get.toNamed(AppRoutes.checkoutOneScreen,arguments: OrderArgs(name,price,ingredients,id,quantity));
  }

  onTapOrderall({required BuildContext context, required String name, required String price, required List<
      dynamic> ingredients, required String id, required int quantity}) {
    Get.toNamed(AppRoutes.checkoutOneScreen,arguments: OrderArgs(name,price,ingredients,id,quantity));
  }

  onTapArrowleft2(BuildContext context) {
    Get.back();
  }
}

class OrderArgs {
  final String name;
  final String price;
  final List<dynamic> ingredients;
  final String id;
  final int quantity;
  OrderArgs(this.name,  this.price, this.ingredients,this.id,this.quantity);
}

class QuantityController extends GetxController {
  var quantity = 1.obs;

  void increment() {
    quantity.value++;
  }

  void decrement() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }
}

class QuantityButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final quantityController = Get.put(QuantityController());

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            quantityController.decrement();
          },
          child: Container(
            width: 20,
            height: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
            child: Icon(
              Icons.remove,
              size: 14,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 8),
        Obx(() => Container(
          width: 30,
          height: 20,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(2),
          ),
          child: Text(
            '${quantityController.quantity.value}',
            style: TextStyle(fontSize: 12),
          ),
        )),
        SizedBox(width: 8),
        InkWell(
          onTap: () {
            quantityController.increment();
          },
          child: Container(
            width: 20,
            height: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
            child: Icon(
              Icons.add,
              size: 14,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}










//////////////////////////
// Container(
// width: getHorizontalSize(74),
// margin:
// getMargin(left: 3, top: 3),
// padding: getPadding(
// left: 8,
// top: 1,
// right: 8,
// bottom: 1),
// decoration: AppDecoration
//     .txtOutlineGray40001,
// child: RichText(
// text: TextSpan(children: [
// TextSpan(
// text: "- ",
// style: TextStyle(
// color: ColorConstant
//     .gray50001,
// fontSize: getFontSize(
// 9.860841751098633),
// fontFamily:
// 'Roboto',
// fontWeight:
// FontWeight
//     .w500)),
// TextSpan(
// text: "",
// style: TextStyle(
// color: ColorConstant
//     .black900,
// fontSize: getFontSize(
// 9.860841751098633),
// fontFamily:
// 'Roboto',
// fontWeight:
// FontWeight
//     .w500)),
// TextSpan(
// text: "1 +",
// style: TextStyle(
// color: ColorConstant
//     .red90004,
// fontSize: getFontSize(
// 9.860841751098633),
// fontFamily:
// 'Roboto',
// fontWeight:
// FontWeight
//     .w500))
// ]),
// textAlign: TextAlign.left)),

///////////-------------------
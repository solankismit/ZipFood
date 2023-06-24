
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zipfood/homePage/foodPage/foodscreen.dart';
import 'package:zipfood/homePage/foodPage/productPage/widgets/product_menu_item_widget.dart';
import 'package:zipfood/services/ingredient_data.dart';
import 'package:zipfood/widgets/youtubeplayer.dart';

import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_title.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';

class ProductMenuPage extends StatelessWidget {
  String id = "";
  String name = "Chai";
  String price = "₹500/Person";
  List<dynamic> ingredients = ["Milk", "Tea Leaves", "Sugar"];
  String recipe = "youtube.com";
  String imgURL = "";
  bool isVeg = true;

  ProductMenuPage({
    Key? key,
    required this.id,
    required this.name,
    required this.price,
    required this.ingredients,
    required this.recipe,
    required this.imgURL,
    required this.isVeg ,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Item item = Item(ingredients: ingredients,name: name);
    // price = item.price.toString();
    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Column(
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
            SizedBox(
                width: size.width,
                height: getVerticalSize(725),
                child: SingleChildScrollView(
                    padding: getPadding(top: 19),
                    child: Padding(
                        padding: getPadding(left: 32, right: 33),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(370),
                                width: getHorizontalSize(311),
                                  margin: getMargin(right: 21),
                                  decoration: AppDecoration.fillGray50,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(name,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  maxLines: 2, // set max lines to 2
                                                  softWrap: true,
                                                  style:
                                                      AppStyle.txtPoppinsSemiBold25),
                                              Padding(
                                                padding:
                                                getPadding(left: 8, top: 16),
                                                child:
                                                SvgPicture.asset(
                                                  isVeg?'assets/icons/veg.svg':'assets/icons/nonveg.svg',
                                                  color: isVeg?Colors.green:Colors.red,
                                                  height: getVerticalSize(40),
                                                  width: getHorizontalSize(40),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomImageView(
                                            imagePath: 'assets/images/'+imgURL+'.jpg',
                                            height: getVerticalSize(178),
                                            width: getHorizontalSize(284),
                                            margin: getMargin(top: 16)),
                                        Padding(
                                            padding:
                                                getPadding(left: 8, top: 28),
                                            child: Text('Rs. ' +price+'/Person',
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoBold1689)),
                                        //Get SVG image

                                        Padding(
                                            padding:
                                            getPadding(left: 8, top: 20),
                                            child: Text('Ingredients',
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoBold1689)),
                                        Container(
                                            width: getHorizontalSize(281),
                                            margin: getMargin(left: 8, top: 10),
                                            child: Text(
                                                ingredients.join(", "),
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtRobotoMedium11))
                                      ])),
                              Container(
                                  height: getVerticalSize(300),
                                  width: getHorizontalSize(310),
                                  margin: getMargin(top: 31),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: getPadding(left: 2),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 4),
                                                          child: Text("Recipe",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsBold16,
                                                          )),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  267),
                                                          margin: getMargin(
                                                            top: 10,
                                                              left: 9),
                                                          child:
                                                          YouTubePlayerWidget(
                                                            videoURL: recipe,
                                                            key : UniqueKey(),
                                                          )
                                                      ),
                                                    ]))),
                                        // CustomButton(
                                        //     height: getVerticalSize(37),
                                        //     width: getHorizontalSize(128),
                                        //     text: "Proceed to Pay",
                                        //     margin: getMargin(top: 190),
                                        //     onTap: () {
                                        //       onTapProceedtopay(context);
                                        //     },
                                        //     alignment: Alignment.topRight),
                                        CustomButton(
                                            height: getVerticalSize(37),
                                            width: getHorizontalSize(128),
                                            text: "Add to cart",
                                            margin: getMargin(top: 190),
                                            onTap: () {
                                              onTapAddtocart(context);
                                            },
                                            alignment: Alignment.topCenter)
                                      ]))
                            ])))),
          ],
        ));
  }

  onTapProceedtopay(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.checkoutOneScreen);
  }

  onTapAddtocart(BuildContext context) {
    Get.toNamed(AppRoutes.cartScreen,arguments: CartArgs(
      id: id,
      name: name,
      price: price,
      ingredients: ingredients,
      recipe: recipe,
      imgURL: imgURL,
      isVeg: isVeg,
    ));
    // Navigator.pushNamed(context, AppRoutes.cartScreen);
  }

  onTapArrowleft(BuildContext context) {
    // Get.back();
  //  Getx POp back
    Navigator.pop(context);
  }
}


class CartArgs {
  String id = "";
  String name = "Chai";
  String price = "₹500/Person";
  List<dynamic> ingredients = ["Milk", "Tea Leaves", "Sugar"];
  String recipe = "youtube.com";
  String imgURL = "";
  bool isVeg = true;

  CartArgs({
    required this.id,
    required this.name,
    required this.price,
    required this.ingredients,
    required this.recipe,
    required this.imgURL,
    required this.isVeg ,
  }) ;
}

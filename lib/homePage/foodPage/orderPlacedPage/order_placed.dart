import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:zipfood/homePage/foodPage/cartPage/cart_screen.dart';
import 'package:zipfood/homePage/homescreen.dart';
import 'package:zipfood/services/add_orders.dart';
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

class OrderPlacedScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as OrderArgs;
    final id = args.id;
    final qty = args.quantity;
    final price = args.price;
    return FutureBuilder<bool>(
      future: placeOrder(id, qty, price),
      builder: (context, snapshot) {
        if(snapshot.hasData){
        return Scaffold(
          backgroundColor: ColorConstant.gray100,
          body: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 32,
              top: 44,
              right: 32,
              bottom: 44,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Zipfood",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold18,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 31,
                    ),
                    child: Text(
                      "Order Placed",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold25,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  height: getVerticalSize(
                    175,
                  ),
                  width: getHorizontalSize(
                    268,
                  ),
                  margin: getMargin(
                    top: 50,
                    bottom: 5,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: getPadding(
                            left: 40,
                            top: 24,
                            right: 40,
                            bottom: 24,
                          ),
                          decoration: AppDecoration.fillDeeporange50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder9,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 34,
                                ),
                                child: Text(
                                  "You'll Receive Your Order Soon.",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold13,
                                ),
                              ),
                              CustomButton(
                                onTap: () {
                                //  Get.toNamed(AppRoutes.cartScreen);
                                  Get.offAll(HomeScreen());
                                },
                                height: getVerticalSize(
                                  37,
                                ),
                                width: getHorizontalSize(
                                  128,
                                ),
                                text: "Keep Shopping",
                                margin: getMargin(
                                  top: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPrize,
                        height: getSize(
                          48,
                        ),
                        width: getSize(
                          48,
                        ),
                        alignment: Alignment.topLeft,
                        margin: getMargin(
                          left: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        );}
        else{
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      }
    );
  }

}

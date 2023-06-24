import 'package:flutter/material.dart';

import '../../../../theme/app_decoration.dart';
import '../../../../utils/color_constant.dart';
import '../../../../utils/size_utils.dart';

// ignore: must_be_immutable
class ProductMenuItemWidget extends StatelessWidget {
  ProductMenuItemWidget();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: ColorConstant.gray50,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1,
          ),
        ),
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Container(
        height: getVerticalSize(
          65,
        ),
        width: getHorizontalSize(
          267,
        ),
        padding: getPadding(
          left: 6,
          top: 2,
          right: 6,
          bottom: 2,
        ),
        decoration: AppDecoration.outlineWhiteA7001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder9,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: getHorizontalSize(
                  251,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "Amanda\n",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text:
                            "Delicious and high quality, packaging was good and\nexcellent delivery service got the product on time\n\n",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "\n\nJohn Peter\n\n",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "Excellent product .\n",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "\n\nPriya\n",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text:
                            "\nDelicious and good quality. Highly recommended\n",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "\n\n\n\nManju\n\n",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "Good Food and Good Service\n\n\n",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "\n\nRina\n\n",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "Excellent product",
                        style: TextStyle(
                          color: ColorConstant.gray60001,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: Padding(
            //     padding: getPadding(
            //       left: 52,
            //       top: 4,
            //     ),
            //     child: RatingBar.builder(
            //       initialRating: 5,
            //       minRating: 0,
            //       direction: Axis.horizontal,
            //       allowHalfRating: false,
            //       itemSize: getVerticalSize(
            //         9,
            //       ),
            //       itemCount: 5,
            //       updateOnDrag: true,
            //       onRatingUpdate: (rating) {},
            //       itemBuilder: (context, _) {
            //         return Icon(
            //           Icons.star,
            //           color: ColorConstant.amber400,
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

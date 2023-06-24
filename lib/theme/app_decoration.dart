import 'package:flutter/material.dart';

import '../utils/color_constant.dart';
import '../utils/size_utils.dart';

class AppDecoration {
  static BoxDecoration get outlineBlack900192 => BoxDecoration(
        color: ColorConstant.red2002d,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900191 => BoxDecoration(
        color: ColorConstant.gray50,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90051 => BoxDecoration(
        color: ColorConstant.blueGray1003d,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90051,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get fillDeeporange50 => BoxDecoration(
        color: ColorConstant.deepOrange50,
      );
  static BoxDecoration get outlineBlack90033 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90033,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineGray40001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray40001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtOutlinePink90066 => BoxDecoration(
        color: ColorConstant.red90004,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.pink90066,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineBlack90033 => BoxDecoration(
        color: ColorConstant.red90004,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90033,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9001c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9000f => BoxDecoration();
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBluegray509f => BoxDecoration(
        color: ColorConstant.blueGray509f,
      );
  static BoxDecoration get outlineBlack9001c => BoxDecoration(
        color: ColorConstant.gray50,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9001c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineBlack9003f => BoxDecoration();
  static BoxDecoration get outlineBlack90007 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90007,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray900a0 => BoxDecoration(
        color: ColorConstant.gray900A0,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get txtOutlineRed90001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.red90001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineBlack90019 => BoxDecoration(
        color: ColorConstant.deepOrange50,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineWhiteA7001 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder17 = BorderRadius.circular(
    getHorizontalSize(
      17,
    ),
  );

  static BorderRadius txtRoundedBorder9 = BorderRadius.circular(
    getHorizontalSize(
      9,
    ),
  );

  static BorderRadius roundedBorder13 = BorderRadius.circular(
    getHorizontalSize(
      13,
    ),
  );

  static BorderRadius roundedBorder21 = BorderRadius.circular(
    getHorizontalSize(
      21,
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30,
    ),
  );

  static BorderRadius customBorderBL40 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
  );

  static BorderRadius roundedBorder9 = BorderRadius.circular(
    getHorizontalSize(
      9,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

StrokeAlign get strokeAlignInside => StrokeAlign.inside;

StrokeAlign get strokeAlignCenter => StrokeAlign.center;

StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

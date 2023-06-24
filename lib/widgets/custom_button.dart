import 'package:flutter/material.dart';

import '../utils/color_constant.dart';
import '../utils/image_constant.dart';
import '../utils/size_utils.dart';
import 'custom_image_view.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      case ButtonPadding.PaddingAll22:
        return getPadding(
          all: 22,
        );
      case ButtonPadding.PaddingT6:
        return getPadding(
          top: 6,
          right: 5,
          bottom: 6,
        );
      default:
        return getPadding(
          all: 10,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillRed90004:
        return ColorConstant.red90004;
      case ButtonVariant.OutlineDeeporange1003f:
        return ColorConstant.red90004;
      case ButtonVariant.FillDeeporange50:
        return ColorConstant.deepOrange50;
      case ButtonVariant.OutlineRed90001:
        return null;
      default:
        return ColorConstant.red90004;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineRed90001:
        return BorderSide(
          color: ColorConstant.red90001,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlinePink90066:
      case ButtonVariant.FillRed90004:
      case ButtonVariant.OutlineDeeporange1003f:
      case ButtonVariant.FillDeeporange50:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineDeeporange1003f:
        return ColorConstant.deepOrange1003f;
      case ButtonVariant.FillRed90004:
      case ButtonVariant.OutlineRed90001:
      case ButtonVariant.FillDeeporange50:
        return null;
      default:
        return ColorConstant.pink90066;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder30:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
      case ButtonShape.RoundedBorder13:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RobotoMedium986:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            9.86,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsSemiBold17:
        return TextStyle(
          color: ColorConstant.gray10001,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.RobotoRegular15:
        return TextStyle(
          color: ColorConstant.red90004,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRegular843:
        return TextStyle(
          color: ColorConstant.red90001,
          fontSize: getFontSize(
            8.43,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder8,
  RoundedBorder30,
  RoundedBorder13,
}

enum ButtonPadding {
  PaddingAll10,
  PaddingAll6,
  PaddingAll22,
  PaddingT6,
}

enum ButtonVariant {
  OutlinePink90066,
  FillRed90004,
  OutlineDeeporange1003f,
  OutlineRed90001,
  FillDeeporange50,
}

enum ButtonFontStyle {
  RobotoMedium14,
  RobotoMedium986,
  PoppinsSemiBold17,
  RobotoRegular15,
  RobotoRegular843,
}

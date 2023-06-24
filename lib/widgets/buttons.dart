import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Widget button({required String text, onPressed,int size=8,height,width}){
  return Container(
    height : height,
    width: width,
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: ElevatedButton(
      clipBehavior: Clip.antiAliasWithSaveLayer,

      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffA01111),
        // backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: size.sp,
          fontWeight: FontWeight.w600,
          //use hex color code A01111
          color: Colors.white,
        ),
      ),
    ),
  );
}
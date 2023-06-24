import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zipfood/constants.dart';
import 'package:zipfood/homePage/foodPage/foodcard.dart';
import 'package:sizer/sizer.dart';

import '../../loginPage/authentication.dart';
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Auth().authuser?.uid);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 8.h,
        title: Text("History",style: titleStyle.copyWith(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          color: Color(0xffA01111),)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 2.w),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder:(context, index) =>  buildCard(
            price: "100",
            recipe: "https://www.youtube.com/watch?v=Jj1v6M3l5q8",
            foodtype: "Veg",
            cooktime: "30",
            id: "1",
            ingredients: ["1","2","3"],
            cuisine: "Indian",
            name: "Chai",
            image: "chai",
            // name: 'Recently Ordered',
            // cuisine: 'Chai',
            context: context,),
        ),
      ),
    );
  }
}

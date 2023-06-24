import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zipfood/constants.dart';
import 'package:zipfood/homePage/foodPage/foodcard.dart';
import 'package:sizer/sizer.dart';

import '../../loginPage/authentication.dart';
import '../../services/food_data.dart';
class FoodListScreen extends StatelessWidget {
  FoodListScreen({Key? key,}) : super(key: key);
  final FoodController foodController = Get.put(FoodController());
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as CategoryArgs;
    // foodController.getFoodsByCategory('category');
    print(Auth().authuser?.uid);
    return FutureBuilder<bool>(
      future: foodController.getFoodsByCategory(args.name),
      builder: (context, snapshot) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 8.h,
            title: Text(args.name ,style: titleStyle.copyWith(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Color(0xffA01111),)),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.white,

          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 2.w),
            // child: ListView.builder(
            //   itemCount: 10,
            //   itemBuilder:(context, index) =>  buildCard(image: "assets/images/chai.jpg",
            //     // name: 'Recently Ordered',
            //     // cuisine: 'Chai',
            //     context: context,),
            child : Obx(() => ListView.builder(
              itemCount: foodController.foods.length,
              itemBuilder: (context, index) {
                final food = foodController.foods[index];
                return buildCard(
                  price: "100",
                  recipe: food.uRL!,
                  image: food.imageURL,
                  name: food.recipeName!,
                  cuisine: food.course!,
                  ingredients: food.ingredients!,
                  cooktime: food.cookTimeInMins!.toString(),
                  foodtype: food.diet!,
                  id: food.id!,
                  context: context,
                );
              },
            )),
            ),

        );
      }
    );
  }
}

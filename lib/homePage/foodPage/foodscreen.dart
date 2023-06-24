import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:zipfood/homePage/foodPage/foodcard.dart';
import 'package:zipfood/services/category_data.dart';
import '../../constants.dart';
import '../../routes/app_routes.dart';

class FoodScreen extends StatelessWidget {
  final categoryController = Get.put(CategoryController());
   FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildAppBar(name: "ZipFood", context: context),
          SingleChildScrollView(
            child: Column(
              children: [
                buildCard(
                  id: "1",
                  cooktime: "10 mins",
                  foodtype: "Snacks",
                  ingredients: ["Milk", "Tea Leaves", "Sugar"],
                  recipe: "youtube.com",
                  price: "₹500/Person",
                    image: "chai",
                    name: 'Recently Ordered',
                    cuisine: 'Chai',
                  context: context,
                ),
                // buildSquareCard(),
              ],
            ),
          ),
          Text(
            'Categories',
            style: subtitleStyle.copyWith(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
              color: Color(0xffA01111),
            ),
          ),
          Container(
            height: 53.h,
            width: 70.w,
            child: Obx(() => GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
              itemCount: categoryController.categories.length,
              itemBuilder: (context, index) {
                var nameTxt = categoryController.categories[index].name;
                return buildSquareCard(
                    name: nameTxt, img: "assets/images/"+ nameTxt.removeAllWhitespace+".jpg", context: context);
              },
            ),)
          ),
        ],
      ),
    );
  }
}

Widget buildAppBar(
    {required String name, bool icon = true, color = Colors.white,required BuildContext context,leftIcon,rightIcon,leftIconFunction,rightIconFunction}) {
  return Container(
    margin: EdgeInsets.only(top: 5.h),
    height: 8.h,
    width: 100.w,
    color: color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        icon
            ? IconButton(
                onPressed: () {
                  leftIconFunction ?? Get.toNamed(AppRoutes.cartScreen);
                },
                // Add Png icon here
                icon: leftIcon??SvgPicture.asset('assets/icons/cart.svg')
            )
            : SizedBox(),
        Text(
          name,
          style: titleStyle.copyWith(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Color(0xffA01111),
          ),
        ),
        // icon
        //     ? IconButton(
        //         onPressed: () {
        //           //Use Getx to navigate to search screen
        //           rightIconFunction??Get.toNamed(AppRoutes.searchScreen);
        //           // Navigator.pushNamed(context, AppRoutes.searchScreen);
        //         },
        //         icon: rightIcon??SvgPicture.asset('assets/icons/search.svg'))
        //     :
        SizedBox(width: 10.w),
      ],
    ),
  );
}

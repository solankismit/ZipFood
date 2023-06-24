import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:zipfood/constants.dart';
import 'package:zipfood/homePage/foodPage/productPage/product_menu_page.dart';
import 'package:zipfood/routes/app_routes.dart';
import 'package:zipfood/widgets/buttons.dart';

Widget buildCard(
    {
      required String name ,
      required String cuisine ,
      required String cooktime ,
      required String foodtype,
    required image,
      required String id ,
      required String price ,
      required List<dynamic> ingredients,
      required String recipe,
    required BuildContext context}) {

  bool isVeg = true;
  if(foodtype == 'non vegetarian'){
    isVeg = false;
  }


  return Container(
    margin: EdgeInsets.symmetric(vertical: .5.h),
    child: Card(
      color: Colors.grey[100],
      //it contains item image, name, cuisine,cook time
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 18.h,
        width: 100.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 4.w,
            ),
            Container(
              height: 11.h,
              width: 25.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              // child: CachedNetworkImage(
              //   imageUrl: image,
              //   placeholder: (context, url) => CircularProgressIndicator(),
              //   errorWidget: (context, url, error) => SizedBox.shrink(),
              //   fit: BoxFit.cover,
              // ),
              child: Image.asset('assets/images/'+image+'.jpg',fit: BoxFit.cover,),
            ),
            SizedBox(
              width: 4.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    width: 52.w,
                    // height: 4.h,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            name,
                            style: titleStyle.copyWith(
                              color: kPrimaryColor,
                              fontSize: 20.sp,
                            ),
                            maxLines: 2, // set max lines to 2
                            overflow: TextOverflow.ellipsis, // show ... if text is too long
                            softWrap: true, // wrap text to the next line
                          ),
                        ),
                        SvgPicture.asset(
                          isVeg? 'assets/icons/veg.svg': 'assets/icons/nonveg.svg',
                          height: 4.h,
                          width: 4.w,
                          color: isVeg ? Colors.green : Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: .3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 1.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cuisine,
                          style:
                              subtitleStyle.copyWith(color: Color(0xff830F0F)),
                        ),
                        SizedBox(
                          height: .4.h,
                        ),
                        Text(
                          cooktime + ' mins',
                          style: TextStyle(fontSize: 8.sp),
                        ),
                      ],
                    ),
                    button(
                      // height: 2.0,
                      // width: 1.0,
                      text: 'View Details',
                      onPressed: () {
                        Get.to(() => ProductMenuPage(isVeg:isVeg,id:id,name: name, price: price, ingredients: ingredients, recipe: recipe, imgURL: image));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildSquareCard(
    {required String name,
    required String img,
    required BuildContext context}) {
  return ElevatedButton(
      onPressed: () {
        Get.toNamed(AppRoutes.foodscreen, arguments: CategoryArgs(name: name, img: img));
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 5,
          fixedSize: Size(100, 100),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(img),
          Text(
            name.toUpperCase(),
            style: subtitleStyle.copyWith(color: Color(0xffA01111)),
          )
        ],
      ));
}

class CategoryArgs{
  String name;
  String img;
  CategoryArgs({required this.name, required this.img});
}

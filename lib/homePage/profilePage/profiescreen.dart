//Create Stateless ProfileScreen
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zipfood/constants.dart';
import 'package:zipfood/loginPage/authentication.dart';
import 'package:zipfood/widgets/buttons.dart';
import '../../routes/app_routes.dart';
import '../foodPage/foodscreen.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      // appBar: AppBar(
      //   title: Text("Profile Screen"),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildAppBar(
                name: "ZipFood", icon: false, color: Colors.grey.shade100, context: context),
            Container(
              margin: EdgeInsets.only(left: 4.w, top: 5.h, right: 3.w),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 5.w,top: 5.h),
                        child: Text(
                          'My Profile',
                          style: subtitleStyle.copyWith(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA01111),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "Personal Details",
                        style: subtitleStyle.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffA01111),
                        ),
                      ),
                      _buildProfileCard(
                          name: 'Smit Solanki',
                          value: '+91 9998441580',
                          Address:
                              'B-101, Shreeji Apartment, Near SBI Bank, Bopal, Ahmedabad, Gujarat 380058'),
                      _buildTile(text: 'My Orders', route: ''),
                      _buildTile(text: 'Edit Profile', route: ''),
                      _buildTile(text: 'FAQs', route: ''),
                      _buildTile(text: 'Help', route: ''),
                      SizedBox(
                        height: 5.h,
                      ),
                      Center(
                        child: button(
                            height: 6.h,
                            width: 50.w,
                            text: "Sign Out",
                            onPressed: () async {
                              await Auth().auth.signOut();
                              Get.offAllNamed(AppRoutes.loginRoute);
                            }),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildTile({text, route}) {
  return Container(
      margin: EdgeInsets.only(top: 2.h),
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: subtitleStyle.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Color(0xffA01111),
            ),
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ));
}

Widget _buildProfileCard(
    {required String name,
    required String value,
    required String Address,
    image}) {
//  Container with white background and round corners
  return Container(
    margin: EdgeInsets.only(top: 2.h),
    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('assets/images/profile.png'),
        Container(
          margin: EdgeInsets.only(left: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: subtitleStyle.copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffA01111),
                ),
              ),
              Text(
                value,
                style: normalStyle.copyWith(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                  // color: Color(0xffA01111),
                ),
              ),
              //Horizontal line
              Container(
                margin: EdgeInsets.only(top: .4.h),
                height: 1,
                width: 50.w,
                color: Colors.grey.shade300,
              ),
              //Solve the problem of text overflow

              Container(
                width: 50.w,
                child: Text(
                  Address,
                  softWrap: true,
                  style: normalStyle.copyWith(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                    // color: Color(0xffA01111),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

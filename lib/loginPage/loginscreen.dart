import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:zipfood/loginPage/authentication.dart';
import 'package:zipfood/widgets/buttons.dart';

import '../constants.dart';
import '../routes/app_routes.dart';

class LoginPageWidget extends StatelessWidget {
  var _isOTPSent = false.obs;
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _otpController = TextEditingController();

  var db = FirebaseFirestore.instance;


  var _token;
  var _verificationId;
  @override
  Widget build(BuildContext context) {
    print("Login Page Widget : $_isOTPSent");
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 53.h,
            width: 100.w,
            child: _buildCard(),
          ),
          SizedBox(
            height: 12.h,
          ),
          //Add Phone Number Text Field along with send otp button
          _buildTextField(
              text: "Phone Number", controller: _phoneNumberController),
          SizedBox(
            height: 4.h,
          ),
          //USe getx to show otp text field only when otp is sent
          Obx(() => _isOTPSent.value
              ? _buildTextField(text: "OTP", controller: _otpController)
              : SizedBox()),
          Obx(
            () => _isOTPSent.value
                ? SizedBox(
                    height: 4.h,
                  )
                : SizedBox(),
          ),
          //Add Send OTP Button
          Obx(
            () => button(
                text: _isOTPSent.value ? "Verify" : "Send OTP",
                onPressed: () async {
                  if (_isOTPSent.value) {
                    bool _issuccess = await _verifyOTP(_token, _verificationId,_otpController);
                    if(_issuccess){
                      await FirebaseFirestore.instance.collection('user').doc(await Auth().authuser?.uid).set(
                          {'number': _phoneNumberController.text});
                      Get.toNamed(AppRoutes.homeRoute);
                    }
                    else{
                      Get.snackbar("Error", "Invalid OTP");
                    }
                  } else {

                    await Auth().auth.verifyPhoneNumber(
                      phoneNumber: "+91${_phoneNumberController.text}",
                      verificationCompleted: (PhoneAuthCredential credential) {
                        // Auto-retrieval of the SMS code for the phone number
                        print("Verification Completed");
                      },
                      verificationFailed: (FirebaseAuthException e) {
                        Get.snackbar("Error", e.message.toString());
                        print(e);
                        // Auto-retrieval of the SMS code for the phone number
                        print("Verification Failed");
                      },
                      codeSent: (String verificationId, int? resendToken) {
                        // Auto-retrieval of the SMS code for the phone number
                        //Getx to show snackbar
                        print("Code Sent");
                        _token = resendToken;
                        _verificationId = verificationId;
                        _isOTPSent.value = true;
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {
                        // Auto-retrieval of the SMS code for the phone number
                        print("Code Auto Retrieval Timeout");
                      },
                    );
                  }
                }),
          )
          // button(text: "Send OTP", onPressed: () {showDialog(context: context, builder: (context) => OTPAlert(),);}),
        ],
      ),
    ));
  }

  LoginPageWidget({Key? key}) : super(key: key);
}

Widget _buildCard() {
  //Card with APp name at center and logo after that
  return Card(
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    child: Stack(
      children: [
        //create horizontal line at bottom of card
        Positioned(
          left: 15.w,
          right: 15.w,
          bottom: 1.h,
          child: Container(
            //Circular border at bottom of card
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xffA01111),
            ),
            height: 0.4.h,
            // color: Color(0xffA01111)),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 5.h,
          // height: 20.h,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ZipFood",
                  style: GoogleFonts.poppins(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600,
                    //use hex color code A01111
                    color: Color(0xffA01111),
                  )),
              SizedBox(
                height: 3.h,
              ),
              Image.asset(
                "assets/images/applogo.png",
                height: 25.h,
                width: 25.h,
              ),
              SizedBox(
                height: 6.h,
              ),
              Text("Login",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    //use hex color code A01111
                    color: Color(0xffA01111),
                  )),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildTextField({required String text, controller}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: TextField(
      keyboardType: TextInputType.number,
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
        contentPadding: EdgeInsets.symmetric(horizontal: 7.w),
        labelStyle: GoogleFonts.poppins(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          //use hex color code A01111
          color: Color(0xffBD6060),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Color(0xffBD6060),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Color(0xffBD6060),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Color(0xffa01111),
          ),
        ),
      ),
    ),
  );
}


Future<bool> _verifyOTP(tkn,verificationId,_otpController) async {
try {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: _otpController.text);
    UserCredential userCredential =
        await Auth().auth.signInWithCredential(credential);
    print(userCredential);
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'invalid-verification-code') {
      print('The verification code is invalid');
      return false;
    }
  }
  return true;
}

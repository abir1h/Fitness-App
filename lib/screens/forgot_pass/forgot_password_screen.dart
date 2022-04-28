import 'package:fitness_app/screens/forgot_pass/verify_otp.dart';
import 'package:fitness_app/select_position.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool agreed = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/login.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: height * 0.2,
                left: width / 10,
                child: Container(
                  height: height * 0.5,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: AppColors.grey2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: height * 0.02),
                      Padding(
                        padding: EdgeInsets.only(left: width / 10),
                        child: Row(
                          children: [
                            Text(
                              'Forgot Password',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.01),

                      Padding(
                        padding: EdgeInsets.only(left: width / 10),
                        child: Row(
                          children: [
                            Container(
                              height: 4,
                              width: 40,
                              decoration: BoxDecoration(
                                color: AppColors.material,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: height * 0.04),

                      Text(
                        'Enter your registered email id or contact number and password to login into your account.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: height * 0.02),

                      //!Number
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.06,
                        width: width * 0.6,
                        padding: EdgeInsets.only(left: width * 0.02),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.phone_outlined),
                            focusedBorder: InputBorder.none,
                            border: OutlineInputBorder(),
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Contact Number',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),

                      //!Sign up
                      SizedBox(height: height * 0.15),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            OTPVerify(),
                            transition: Transition.zoom,
                            duration: const Duration(milliseconds: 250),
                          );
                        },
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              'NEXT',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   top: height * 0.9,
              //   left: width * 0.3,
              //   child: GestureDetector(
              //     onTap: () {
              //       Get.back();
              //     },
              //     child: const Text(
              //       'Already have an account?',
              //       style: TextStyle(
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

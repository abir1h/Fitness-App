import 'package:fitness_app/screens/AuthScreens/sing_up_screen.dart';
import 'package:fitness_app/screens/MainHome.dart';
import 'package:fitness_app/screens/forgot_pass/forgot_password_screen.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/custom_bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  height: height * 0.55,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: AppColors.grey2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: height * 0.02),
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/p21.jpg'),
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.06,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),

                      //!Pass
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.06,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility_off,
                            ),
                          ),
                        ),
                      ),
                      //!Login button
                      SizedBox(height: height * 0.02),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const CustomBottomNavigationBar());
                        },
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.magenta,
                          ),
                          child: const Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),

                      //!Sign up
                      SizedBox(height: height * 0.02),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            SignUpScreen(),
                            transition: Transition.rightToLeft,
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
                              'SIGN UP',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.02),
                      // const Text(
                      //   'Signup with social media',
                      //   style: TextStyle(fontSize: 10, color: Colors.white),
                      // ),
                      //
                      // //!Google
                      // SizedBox(height: height * 0.02),
                      // Image.asset('assets/images/google.png'),
                      SizedBox(height: height * 0.02),

                      GestureDetector(
                        onTap: () {
                          Get.to(() => ForgotPassword());
                        },
                        child: const Text(
                          'Forgot password',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   top: height * 0.9,
              //   left: width * 0.37,
              //   child: GestureDetector(
              //     onTap: () {
              //       Get.to(() => ForgotPassword());
              //     },
              //     child: const Text(
              //       'Forgot password',
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

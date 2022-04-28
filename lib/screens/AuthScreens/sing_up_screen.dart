import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/select_position.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  height: height * 0.6,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: AppColors.grey2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: height * 0.02),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                        ),
                      ),

                      //!Full name
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
                            focusedBorder: InputBorder.none,
                            border: OutlineInputBorder(),
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Full Name',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),

                      //!Address
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
                            focusedBorder: InputBorder.none,
                            border: OutlineInputBorder(),
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Address',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),

                      //!Email
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
                            border: OutlineInputBorder(),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      //!Password
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
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),

                      Padding(
                        padding: EdgeInsets.only(left: width / 10),
                        child: Row(
                          children: [
                            Checkbox(
                              value: agreed,
                              onChanged: (newVal) {
                                setState(() {
                                  agreed = newVal!;
                                });
                              },
                              activeColor: Color(0xffC50048),
                            ),
                            SizedBox(width: width * 0.01),
                            Text(
                              'I agree with privecy policy',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),

                      //!Sign up
                      SizedBox(height: height * 0.02),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            SelectPositionScreen(),
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
                    ],
                  ),
                ),
              ),
              Positioned(
                top: height * 0.9,
                left: width * 0.3,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

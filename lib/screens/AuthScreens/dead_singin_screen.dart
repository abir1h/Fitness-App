import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            
            SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.25,
                    width: width,
                    child: Image.asset(
                      'assets/images/top.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: height * 0.8,
                        width: width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),

                        //!Contents
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width / 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height * 0.035),
                              const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.textcolor,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              Container(
                                height: 4,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.material,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(height: height * 0.03),
                              const Text(
                                'Enter your registered email id or contact number and\npassword to login into your account.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textcolor,
                                ),
                              ),
                              SizedBox(height: height * 0.03),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                      borderSide: BorderSide(
                                        color: Color(0xff500C44),
                                        width: 2.0,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                      borderSide: BorderSide(
                                        color: Color(0xffEBE8E8),
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: 'Enter email or contact number',
                                    labelStyle:
                                        TextStyle(color: Color(0xff500C44)),
                                    suffixIcon: Icon(
                                      Icons.email,
                                      color: Color(0xffC2C2C4),
                                    ),
                                  ),
                                ),
                              ),

                              //!pass

                              SizedBox(height: height * 0.03),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                      borderSide: BorderSide(
                                        color: Color(0xff500C44),
                                        width: 2.0,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                      borderSide: BorderSide(
                                        color: Color(0xffEBE8E8),
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: 'Password',
                                    labelStyle:
                                        TextStyle(color: Color(0xff500C44)),
                                    suffixIcon: Icon(
                                      Icons.lock,
                                      color: Color(0xffC2C2C4),
                                    ),
                                  ),
                                ),
                              ),

                              //!Forgot Pass
                              SizedBox(height: height * 0.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        color: AppColors.material,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  )
                                ],
                              ),

                              //! Singin Button
                              SizedBox(height: height * 0.02),
                              InkWell(
                                onTap: () {
                                  // Get.offAll(() => const CustomBottomNavigationBar());
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width / 15),
                                  child: Container(
                                    height: height * 0.06,
                                    width: width,
                                    padding:
                                        EdgeInsets.only(left: width * 0.04),
                                    decoration: BoxDecoration(
                                      color: AppColors.material,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'LOGIN',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: height * 0.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'OR',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),

                              //! Facebook Google
                              SizedBox(height: height * 0.02),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xffDFD9D9)),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/fb.png',
                                        ),
                                        SizedBox(width: width * 0.01),
                                        const Text(
                                          'Facebook',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xffDFD9D9)),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/google.png',
                                        ),
                                        SizedBox(width: width * 0.02),
                                        const Text(
                                          'Google',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: height * 0.02),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Don\'t have an account?',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: width * 0.02),
                                  GestureDetector(
                                    onTap: () {
                                      // Get.to(() => const SignUpPage());
                                    },
                                    child: Column(
                                      children: [
                                        const Text(
                                          'Sign Up',
                                          style: TextStyle(
                                            color: AppColors.material,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const SizedBox(height: 1),
                                        Container(
                                          height: 4,
                                          width: 64,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: AppColors.material,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*


Container(
                clipBehavior: Clip.none,
                height: height * 0.25,
                width: width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/top.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),


Positioned(
                top: height * 0.225,
                child: Container(
                  height: height * 0.8,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),

                  //!Contents
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width / 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.035),
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor2,
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Container(
                          height: 4,
                          width: 40,
                          decoration: BoxDecoration(
                            color: AppColors.material,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        const Text(
                          'Enter your registered email id or contact number and\npassword to login into your account.',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.disabledTextColor,
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xff500C44),
                                  width: 2.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xffEBE8E8),
                                  width: 2.0,
                                ),
                              ),
                              labelText: 'Enter email or contact number',
                              labelStyle: TextStyle(color: Color(0xff500C44)),
                              suffixIcon: Icon(
                                Icons.email,
                                color: Color(0xffC2C2C4),
                              ),
                            ),
                          ),
                        ),

                        //!pass

                        SizedBox(height: height * 0.03),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xff500C44),
                                  width: 2.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xffEBE8E8),
                                  width: 2.0,
                                ),
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Color(0xff500C44)),
                              suffixIcon: Icon(
                                Icons.lock,
                                color: Color(0xffC2C2C4),
                              ),
                            ),
                          ),
                        ),

                        //!Forgot Pass
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: AppColors.material,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),

                        //! Singin Button
                        SizedBox(height: height * 0.02),
                        InkWell(
                          onTap: () {
                            // Get.offAll(() => const CustomBottomNavigationBar());
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width / 15),
                            child: Container(
                              height: height * 0.06,
                              width: width,
                              padding: EdgeInsets.only(left: width * 0.04),
                              decoration: BoxDecoration(
                                color: AppColors.material,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'OR',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),

                        //! Facebook Google
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: height * 0.05,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffDFD9D9)),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/fb.png',
                                  ),
                                  SizedBox(width: width * 0.01),
                                  const Text(
                                    'Facebook',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.05,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffDFD9D9)),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/google.png',
                                  ),
                                  SizedBox(width: width * 0.02),
                                  const Text(
                                    'Google',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: height * 0.02),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: width * 0.02),
                            GestureDetector(
                              onTap: () {
                                // Get.to(() => const SignUpPage());
                              },
                              child: Column(
                                children: [
                                  const Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      color: AppColors.material,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 1),
                                  Container(
                                    height: 4,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: AppColors.material,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )

*/